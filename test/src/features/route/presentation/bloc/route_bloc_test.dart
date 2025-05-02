import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:mobile_test/src/features/route/domain/usecases/route_use_case.dart';
import 'package:mobile_test/src/features/route/domain/usecases/route_use_case_params.dart';
import 'package:mobile_test/src/features/route/presentation/bloc/route_bloc.dart';
import 'package:mobile_test/src/features/weather/domain/usecases/weather_use_case.dart';
import 'package:mobile_test/src/features/weather/domain/usecases/weather_use_case_params.dart';
import 'package:logger/logger.dart';

import '../../../../../mock_entities.dart';

class MockRouteUseCase extends Mock implements RouteUseCase {}

class MockWeatherUseCase extends Mock implements WeatherUseCase {}

class MockLogger extends Mock implements Logger {}

void main() {
  late RouteBloc routeBloc;
  late MockRouteUseCase mockRouteUseCase;
  late MockWeatherUseCase mockWeatherUseCase;
  late MockLogger mockLogger;

  setUp(() {
    mockRouteUseCase = MockRouteUseCase();
    mockWeatherUseCase = MockWeatherUseCase();
    mockLogger = MockLogger();
    routeBloc = RouteBloc(
      routeUseCase: mockRouteUseCase,
      weatherUseCase: mockWeatherUseCase,
      logger: mockLogger,
    );
  });

  group('RouteBloc', () {
    test('initial state is RouteState.initial', () {
      expect(routeBloc.state, const RouteState.initial(from: '', to: ''));
    });

    test('emits RouteState.loading and then RouteState.loaded on successful route load', () async {
      // Arrange
      const from = 'Location A';
      const to = 'Location B';
      final routeParams = RouteUseCaseParams(from: from, to: to);
     
      when(() => mockRouteUseCase.call(routeParams))
          .thenAnswer((_) async => mockRouteEntity);

      final weatherParams = WeatherUseCaseParams(lat: 37.7749, lng: -122.4194);
     
      when(() => mockWeatherUseCase.call(weatherParams))
          .thenAnswer((_) async => mockWeatherEntity);

      // Act
      routeBloc.add(const RouteEvent.loadRoute());

      // Assert
      await expectLater(
        routeBloc.stream,
        emitsInOrder([
          const RouteState.loading(),
          isA<RouteState>(),
        ]),
      );
    });
  });
}