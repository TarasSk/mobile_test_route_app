part of 'route_bloc.dart';

@freezed
sealed class RouteEvent with _$RouteEvent {
  const factory RouteEvent.onFromChanged({
    required String from,
  }) = _FromChanged;
  const factory RouteEvent.onToChanged({
    required String to,
  }) = _ToChanged;
  const factory RouteEvent.loadRoute() = _LoadRoute;
}
