import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_model.freezed.dart';

@freezed
abstract class WeatherModel with _$WeatherModel {
  const WeatherModel._();
  const factory WeatherModel({
    required String description,
    required double temperature,
  }) = _WeatherModel;

  String get temperatureWithSign {
    final sign = temperature > 0 ? '+' : '';
    return '$sign${temperature.toStringAsFixed(1)}°C';
  }
}
