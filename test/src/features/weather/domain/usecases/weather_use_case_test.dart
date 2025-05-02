import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:mobile_test/src/features/weather/domain/repositories/weather_repository.dart';
import 'package:mobile_test/src/features/weather/domain/usecases/weather_use_case.dart';
import 'package:mobile_test/src/features/weather/domain/usecases/weather_use_case_params.dart';

import '../../../../../mock_entities.dart';

class MockWeatherRepository extends Mock implements WeatherRepository {}

void main() {
  setUpAll(() {
    registerFallbackValue(WeatherUseCaseParams(lat: 0.0, lng: 0.0));
  });

  group('WeatherUseCase', () {
    late WeatherUseCase useCase;
    late MockWeatherRepository mockRepository;

    setUp(() {
      mockRepository = MockWeatherRepository();
      useCase = WeatherUseCase(repository: mockRepository);
    });

    test('should return WeatherEntity when repository call is successful', () async {
      // Arrange
      var params = WeatherUseCaseParams(lat: 37.7749, lng: -122.4194);
      when(() => mockRepository.getWeather(lat: params.lat, lng: params.lng))
          .thenAnswer((_) async => mockWeatherEntity);

      // Act
      final result = await useCase(params);

      // Assert
      expect(result, mockWeatherEntity);
      verify(() => mockRepository.getWeather(lat: params.lat, lng: params.lng));
      verifyNoMoreInteractions(mockRepository);
    });
  });
}