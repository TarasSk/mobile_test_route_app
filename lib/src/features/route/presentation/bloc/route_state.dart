part of 'route_bloc.dart';

@freezed
sealed class RouteState with _$RouteState {
  const RouteState._();
  const factory RouteState.initial({
    required String from,
    required String to,
  }) = _Initial;
  const factory RouteState.loading() = _LoadInProgress;
  const factory RouteState.loaded({
    required RouteModel route,
  }) = _LoadSuccess;
}
