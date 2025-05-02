import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger/logger.dart';
import 'package:mobile_test/src/features/route/domain/entities/route_entity.dart';
import 'package:mobile_test/src/features/route/domain/usecases/route_use_case_params.dart';
import 'package:mobile_test/src/features/weather/domain/usecases/weather_use_case_params.dart';
import 'package:mocktail/mocktail.dart';

import 'package:mobile_test/src/features/route/domain/usecases/route_use_case.dart';
import 'package:mobile_test/src/features/weather/domain/usecases/weather_use_case.dart';
import 'package:mobile_test/src/features/route/presentation/bloc/route_bloc.dart';
import 'package:mobile_test/src/features/route/presentation/widgets/route_selector.dart';

class MockRouteUseCase extends Mock implements RouteUseCase {}

class FakeRouteUseCaseParams extends Fake implements RouteUseCaseParams {}

class FakeWeatherUseCaseParams extends Fake implements WeatherUseCaseParams {}

class MockWeatherUseCase extends Mock implements WeatherUseCase {}

class MockLogger extends Mock implements Logger {}

void main() {
  late RouteBloc routeBloc;
  late MockRouteUseCase mockRouteUseCase;
  late MockWeatherUseCase mockWeatherUseCase;
  late MockLogger mockLogger;

  setUpAll(() {
    registerFallbackValue(FakeRouteUseCaseParams());
    registerFallbackValue(FakeWeatherUseCaseParams());
  });

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

  tearDown(() {
    routeBloc.close();
  });

  testWidgets('renders text fields and button', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: BlocProvider<RouteBloc>.value(
          value: routeBloc,
          child: const Scaffold(
            body: RouteSelectorWidget(),
          ),
        ),
      ),
    );

    expect(find.byType(TextField), findsNWidgets(2));
    expect(find.text('Choose starting point'), findsOneWidget);
    expect(find.text('Choose destination'), findsOneWidget);
    expect(find.text('Get Directions'), findsOneWidget);
  });

  testWidgets('updates bloc state on text field input', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: BlocProvider<RouteBloc>.value(
          value: routeBloc,
          child: const Scaffold(
            body: RouteSelectorWidget(),
          ),
        ),
      ),
    );

    await tester.enterText(find.byType(TextField).first, 'Start Location');
    await tester.pump();

    switch (routeBloc.state) {
      case Initial(:final from):
        expect(from, 'Start Location');
        break;
      default:
        fail('Unexpected state after entering "from": ${routeBloc.state}');
    }

    await tester.enterText(find.byType(TextField).last, 'End Location');
    await tester.pump();

    switch (routeBloc.state) {
      case Initial(:final to):
        expect(to, 'End Location');
        break;
      default:
        fail('Unexpected state after entering "to": ${routeBloc.state}');
    }
  });

  testWidgets('triggers loadRoute event on button press', (WidgetTester tester) async {
    final mockResult = RouteEntity(distance: 1000, duration: 600, steps: []);
    when(() => mockRouteUseCase(any())).thenAnswer((_) async => mockResult);
    await tester.pumpWidget(
      MaterialApp(
        home: BlocProvider<RouteBloc>.value(
          value: routeBloc,
          child: const Scaffold(
            body: RouteSelectorWidget(),
          ),
        ),
      ),
    );

    await tester.enterText(find.byType(TextField).first, 'Start');
    await tester.enterText(find.byType(TextField).last, 'End');
    await tester.pump();

    await tester.tap(find.text('Get Directions'));
    await tester.pump();

    switch (routeBloc.state) {
      case LoadInProgress():
        expect(true, isTrue); // You can assert other loading behavior here
        break;
      default:
        fail('Expected loading state but got ${routeBloc.state}');
    }
  });
}
