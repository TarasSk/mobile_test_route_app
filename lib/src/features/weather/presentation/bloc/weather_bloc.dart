import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:mobile_test/src/features/route/presentation/models/location_model.dart';
import 'package:mobile_test/src/features/weather/domain/usecases/weather_use_case.dart';
import 'package:mobile_test/src/features/weather/domain/usecases/weather_use_case_params.dart';
import 'package:mobile_test/src/features/weather/presentation/models/weather_model.dart';

part 'weather_event.dart';
part 'weather_state.dart';
part 'weather_bloc.freezed.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc({
    required WeatherUseCase weatherUseCase,
    required Logger logger,
  })  : _weatherUseCase = weatherUseCase,
        _logger = logger,
        super(Initial()) {
    on<_FetchWeatherByLocation>(_onFetchWeatherByLocation);
  }
  final WeatherUseCase _weatherUseCase;
  final Logger _logger;

  final Map<LocationModel, WeatherModel> _cache = {};

  void _onFetchWeatherByLocation(
    _FetchWeatherByLocation event,
    Emitter<WeatherState> emit,
  ) async {
    if (_cache.containsKey(event.location)) return;

    try {
      final weather = await _weatherUseCase.call(
        WeatherUseCaseParams(
          lat: event.location.lat,
          lng: event.location.lng,
        ),
      );
      _cache[event.location] = WeatherModel(
        description: weather.description,
        temperature: weather.temperature,
      );
      emit(Loaded(weather: _cache));
    } catch (e) {
      _logger.e('Error fetching weather $e');
      emit(
        Error(
          message: e.toString(),
        ),
      );
    }
  }
}
