part of 'route_bloc.dart';

@freezed
sealed class RouteState with _$RouteState {
  const RouteState._();
  const factory RouteState.initial({
    required String from,
    required String to,
  }) = Initial;
  const factory RouteState.loading() = LoadInProgress;
  const factory RouteState.loaded({
    required RouteModel route,
    required Map<String, WeatherModel> weather,
    required String from,
    required String to,
    @Default(false) bool isWeatherLoading,
  }) = LoadSuccess;
}
