import 'package:mobile_test/src/features/weather/domain/entities/weather_entity.dart';

abstract interface class WeatherRepository {
  Future<WeatherEntity> getWeather({
    required double lat,
    required double lng,
  });
}
