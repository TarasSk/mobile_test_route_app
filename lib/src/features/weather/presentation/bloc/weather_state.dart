part of 'weather_bloc.dart';

@freezed
sealed class WeatherState with _$WeatherState {
  const factory WeatherState.initial() = Initial;
  const factory WeatherState.loaded({
    required Map<LocationModel, WeatherModel> weather,
  }) = Loaded;
  const factory WeatherState.error({
    required String message,
  }) = Error;
}
