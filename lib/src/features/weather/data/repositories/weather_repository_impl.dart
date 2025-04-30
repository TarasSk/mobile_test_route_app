import 'package:api_service/api_service.dart';
import 'package:mobile_test/src/features/weather/data/converters/weather_entity_converter.dart';
import 'package:mobile_test/src/features/weather/domain/entities/weather_entity.dart';
import 'package:mobile_test/src/features/weather/domain/repositories/weather_repository.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  WeatherRepositoryImpl({
    required Api api,
    required WeatherEntityConverter converter,
  })  : _api = api,
        _converter = converter;

  final Api _api;
  final WeatherEntityConverter _converter;

  @override
  Future<WeatherEntity> getWeather({
    required double lat,
    required double lng,
  }) async {
    final response = await _api.getWeather(lat: lat, lng: lng);
    final data = response.data;
    if (data != null) {
      return _converter.convert(data);
    }
    throw Exception('Failed to fetch weather: data is null');
  }
}
