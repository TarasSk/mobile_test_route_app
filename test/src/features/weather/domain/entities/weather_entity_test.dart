import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_test/src/features/weather/domain/entities/weather_entity.dart';

void main() {
  group('WeatherEntity', () {
    test('should create a valid WeatherEntity', () {
      // Arrange: Set up the necessary conditions for the test.
      const weatherEntity = WeatherEntity(description: 'Sunny', temperature: 25.0);

      // Act: Create an instance of WeatherEntity.

      // Assert: Verify the properties of the WeatherEntity instance.
      expect(weatherEntity.description, 'Sunny');
      expect(weatherEntity.temperature, 25.0);
    });
  });
}