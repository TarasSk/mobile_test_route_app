import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_test/src/features/weather/presentation/models/weather_model.dart';
import 'package:mobile_test/src/features/weather/presentation/widgets/weather_section.dart';

void main() {
  group('WeatherSection Widget Tests', () {
    testWidgets('displays weather details when model is provided', (WidgetTester tester) async {
      // Arrange
      const weatherModel = WeatherModel(
        description: 'clear sky',
        temperature: 25.0,
      );

      // Act
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: WeatherSection(model: weatherModel),
          ),
        ),
      );

      // Assert
      expect(find.text('clear sky'), findsOneWidget);
      expect(find.text('+25.0°C'), findsOneWidget);
      expect(find.byIcon(Icons.wb_sunny), findsOneWidget); // Icon for 'clear sky'
    });

    testWidgets('shows CircularProgressIndicator when model is null', (WidgetTester tester) async {
      // Act
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: const WeatherSection(model: null),
          ),
        ),
      );

      // Assert
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });
  });
}