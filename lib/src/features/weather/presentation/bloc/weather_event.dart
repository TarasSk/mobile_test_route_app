part of 'weather_bloc.dart';

@freezed
sealed class WeatherEvent with _$WeatherEvent {
  const factory WeatherEvent.fetchWeatherByLocation({required LocationModel location}) = _FetchWeatherByLocation;
}