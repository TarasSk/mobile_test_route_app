import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:mobile_test/src/features/route/domain/usecases/route_use_case.dart';
import 'package:mobile_test/src/features/route/domain/usecases/route_use_case_params.dart';
import 'package:mobile_test/src/features/route/presentation/models/location_model.dart';
import 'package:mobile_test/src/features/route/presentation/models/route_model.dart';
import 'package:mobile_test/src/features/route/presentation/models/route_step_model.dart';
import 'package:mobile_test/src/features/weather/domain/usecases/weather_use_case.dart';
import 'package:mobile_test/src/features/weather/domain/usecases/weather_use_case_params.dart';
import 'package:mobile_test/src/features/weather/presentation/models/weather_model.dart';

part 'route_state.dart';
part 'route_event.dart';
part 'route_bloc.freezed.dart';

class RouteBloc extends Bloc<RouteEvent, RouteState> {
  RouteBloc(
      {required RouteUseCase routeUseCase,
      required WeatherUseCase weatherUseCase,
      required Logger logger})
      : _routeUseCase = routeUseCase,
        _weatherUseCase = weatherUseCase,
        _logger = logger,
        super(const RouteState.initial(from: '', to: '')) {
    on<_FromChanged>(_onFromChanged);
    on<_ToChanged>(_onToChanged);
    on<_LoadRoute>(_onLoadRoute);
    on<_Clear>(_onClear);
  }

  final RouteUseCase _routeUseCase;
  final WeatherUseCase _weatherUseCase;
  final Logger _logger;

  final int _batchSize = 5;
  int _loadedCount = 0;

  void _onFromChanged(_FromChanged event, Emitter<RouteState> emit) {
    emit(
      switch (state) {
        Initial(:final to) => RouteState.initial(
            from: event.from,
            to: to,
          ),
        LoadSuccess(:final route, :final weather, :final to) => RouteState.loaded(
            route: route,
            weather: weather,
            from: event.from,
            to: to,
          ),
        _ => state,
      },
    );
  }

  void _onToChanged(_ToChanged event, Emitter<RouteState> emit) {
    emit(
      switch (state) {
        Initial(:final from) => RouteState.initial(
            from: from,
            to: event.to,
          ),
        LoadSuccess(:final route, :final weather, :final from) => RouteState.loaded(
            route: route,
            weather: weather,
            from: from,
            to: event.to,
          ),
        _ => state,
      },
    );
  }

  void _onLoadRoute(_LoadRoute event, Emitter<RouteState> emit) async {
    switch (state) {
      case Initial(:final from, :final to) when from.isNotEmpty && to.isNotEmpty:
      case LoadSuccess(
            :final from,
            :final to,
          )
          when from.isNotEmpty && to.isNotEmpty:
        emit(const RouteState.loading());
        _loadedCount = 0;
        try {
          final routeEntity = await _routeUseCase.call(RouteUseCaseParams(from: from, to: to));

          emit(
            RouteState.loaded(
              route: RouteModel(
                duration: routeEntity.duration,
                distance: routeEntity.distance,
                steps: routeEntity.steps
                    .map(
                      (e) => RouteStepModel(
                        direction: e.direction,
                        location: LocationModel(
                          lat: e.location.lat,
                          lng: e.location.lng,
                        ),
                      ),
                    )
                    .toList(),
              ),
              weather: {},
              from: from,
              to: to,
            ),
          );
        } catch (e) {
          _logger.e('Error loading route $e');
          emit(
            RouteState.error(
              from: from,
              to: to,
              message: 'Error loading route',
            ),
          );
        }

        if (state
            case LoadSuccess(
              :final route,
              :final weather,
              :final from,
              :final to,
            )) {
          // load weather in batches to avoid overloading the API
          Map<String, WeatherModel> accWeather = Map.from(weather);
          try {
            while (_loadedCount < route.steps.length) {
              final batch = route.steps.skip(_loadedCount).take(_batchSize);
              final weatherBatch = await _loadWeatherForSteps(batch);
              _loadedCount += batch.length;
              accWeather.addAll(weatherBatch);

              emit(
                RouteState.loaded(
                  route: route,
                  weather: Map.from(accWeather),
                  from: from,
                  to: to,
                ),
              );
            }
          } catch (e) {
            _logger.e('Error fetching weather $e');
            emit(
              RouteState.error(
                from: from,
                to: to,
                message: 'Error fetching weather',
              ),
            );
          }
        }
      default:
        break;
    }
  }

  void _onClear(_Clear event, Emitter<RouteState> emit) {
    _loadedCount = 0;
    emit(const RouteState.initial(from: '', to: ''));
  }

  Future<Map<String, WeatherModel>> _loadWeatherForSteps(Iterable<RouteStepModel> steps) async {
    final entries = await Future.wait(
      steps.map((step) async {
        final weather = await _weatherUseCase.call(
          WeatherUseCaseParams(
            lat: step.location.lat,
            lng: step.location.lng,
          ),
        );
        return MapEntry(
          step.location.stringKey,
          WeatherModel(
            description: weather.description,
            temperature: weather.temperature,
          ),
        );
      }),
    );
    return Map.fromEntries(entries);
  }
}
