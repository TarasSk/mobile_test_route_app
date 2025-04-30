import 'dart:convert';

import 'package:api_service/api_service.dart';
import 'package:mobile_test/src/features/weather/domain/entities/weather_entity.dart';

class WeatherEntityConverter extends Converter<Weather, WeatherEntity> {
  const WeatherEntityConverter();

  @override
  WeatherEntity convert(Weather input) {
    return WeatherEntity(
      description: input.description,
      temperature: input.temperature
    );
  }
}