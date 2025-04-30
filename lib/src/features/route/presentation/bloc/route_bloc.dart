import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_test/src/features/route/domain/usecases/route_use_case.dart';
import 'package:mobile_test/src/features/route/domain/usecases/route_use_case_params.dart';
import 'package:mobile_test/src/features/route/presentation/models/location_model.dart';
import 'package:mobile_test/src/features/route/presentation/models/route_model.dart';
import 'package:mobile_test/src/features/route/presentation/models/route_step_model.dart';

part 'route_state.dart';
part 'route_event.dart';
part 'route_bloc.freezed.dart';

class RouteBloc extends Bloc<RouteEvent, RouteState> {
  RouteBloc({required RouteUseCase routeUseCase})
      : _routeUseCase = routeUseCase,
        super(const RouteState.initial(from: '', to: '')) {
    on<_FromChanged>(_onFromChanged);
    on<_ToChanged>(_onToChanged);
    on<_LoadRoute>(_onLoadRoute);
  }

  final RouteUseCase _routeUseCase;

  void _onFromChanged(_FromChanged event, Emitter<RouteState> emit) {
    emit(
      switch (state) {
        _Initial(:final to) => RouteState.initial(
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
        _Initial(:final from) => RouteState.initial(
            from: from,
            to: event.to,
          ),
        _ => state,
      },
    );
  }

  void _onLoadRoute(_LoadRoute event, Emitter<RouteState> emit) async {
    if (state case _Initial(:final from, :final to)
        when from.isNotEmpty && to.isNotEmpty) {
      emit(const RouteState.loading());

      final route =
          await _routeUseCase.call(RouteUseCaseParams(from: from, to: to));

      emit(
        RouteState.loaded(
          route: RouteModel(
            duration: route.duration,
            distance: route.distance,
            steps: route.steps
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
        ),
      );
    }
  }
}
