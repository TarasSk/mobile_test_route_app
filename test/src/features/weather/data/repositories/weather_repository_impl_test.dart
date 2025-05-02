import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:mobile_test/src/features/weather/data/repositories/weather_repository_impl.dart';
import 'package:mobile_test/src/features/weather/data/converters/weather_entity_converter.dart';
import 'package:mobile_test/src/features/weather/domain/entities/weather_entity.dart';
import 'package:api_service/api_service.dart';

class MockApi extends Mock implements Api {}

class MockWeatherEntityConverter extends Mock implements WeatherEntityConverter {}

void main() {
  late MockApi mockApi;
  late MockWeatherEntityConverter mockConverter;
  late WeatherRepositoryImpl repository;

  setUp(() {
    mockApi = MockApi();
    mockConverter = MockWeatherEntityConverter();
    repository = WeatherRepositoryImpl(api: mockApi, converter: mockConverter);
  });

  group('getWeather', () {
    const lat = 37.7749;
    const lng = -122.4194;
    final mockResponseData = Weather(description: 'description', temperature: 10);
    final mockWeatherEntity = WeatherEntity(description: 'description', temperature: 10);

    test('should return WeatherEntity when API call is successful and data is not null', () async {
      when(() => mockApi.getWeather(lat: lat, lng: lng)).thenAnswer(
          (_) async => Response(data: mockResponseData, requestOptions: RequestOptions()));
      when(() => mockConverter.convert(mockResponseData)).thenReturn(mockWeatherEntity);

      final result = await repository.getWeather(lat: lat, lng: lng);

      expect(result, mockWeatherEntity);
      verify(() => mockApi.getWeather(lat: lat, lng: lng)).called(1);
      verify(() => mockConverter.convert(mockResponseData)).called(1);
    });
  });
}
