import 'package:api_service/api_service.dart';
import 'package:dio/dio.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockDio extends Mock implements Dio {}

void main() {
  late MockDio mockDio;
  late Api api;

  setUp(() {
    mockDio = MockDio();
    api = Api(dio: mockDio);
  });

  setUpAll(() {
    registerFallbackValue(RequestOptions(path: ''));
  });

  group('getRoute', () {
    test('should fetch route successfully with valid inputs', () async {
      const from = 'New York';
      const to = 'Los Angeles';

      final mockRouteJson = {
        'duration': 120,
        'distance': 100,
        'steps': [
          {
            'direction': 'Head north',
            'location': {'lat': 40.7128, 'lng': -74.0060}
          },
          {
            'direction': 'Turn left',
            'location': {'lat': 40.7138, 'lng': -74.0070}
          },
        ],
      };

      final mockResponse = Response(
        data: mockRouteJson,
        statusCode: 200,
        requestOptions: RequestOptions(path: ''),
      );

      when(() => mockDio.get(any())).thenAnswer((_) async => mockResponse);

      final response = await api.getRoute(from: from, to: to);

      expect(response.data, isNotNull);
      expect(response.data, isA<Route>());
      expect(response.data?.steps, isA<List<RouteStep>>());
      verify(() => mockDio.get('/api/route/New%20York/Los%20Angeles')).called(1);
    });

    test('should throw assertion error for invalid city names', () {
      expect(
        () => api.getRoute(from: 'New York123', to: 'Los Angeles'),
        throwsA(isA<AssertionError>()),
      );
    });

    test('should handle DioException correctly', () async {
      const from = 'New York';
      const to = 'Los Angeles';

      when(() => mockDio.get(any())).thenThrow(DioException(
        type: DioExceptionType.connectionTimeout,
        requestOptions: RequestOptions(path: ''),
      ));

      expect(
        () => api.getRoute(from: from, to: to),
        throwsA(predicate((e) =>
            e is Exception && e.toString().contains('Failed to fetch route: Connection timeout'))),
      );
    });
  });

  group('getWeather', () {
    test('should fetch weather successfully with valid inputs', () async {
      const lat = 40.7128;
      const lng = -74.0060;
      final mockResponse = Response(
        data: {
          'description': 'overcast clouds',
          'temperature': 16,
        },
        statusCode: 200,
        requestOptions: RequestOptions(path: ''),
      );

      when(() => mockDio.get(any())).thenAnswer((_) async => mockResponse);

      final response = await api.getWeather(lat: lat, lng: lng);

      expect(response.data, isNotNull);
      expect(response.data, isA<Weather>());
      verify(() => mockDio.get('/api/Weather/40.7128/-74.006')).called(1);
    });

    test('should throw assertion error for invalid latitude/longitude', () {
      expect(
        () => api.getWeather(lat: 100.0, lng: -74.0060),
        throwsA(isA<AssertionError>()),
      );
      expect(
        () => api.getWeather(lat: 40.7128, lng: -200.0),
        throwsA(isA<AssertionError>()),
      );
    });

    test('should handle DioException correctly', () async {
      const lat = 40.7128;
      const lng = -74.0060;

      when(() => mockDio.get(any())).thenThrow(DioException(
        type: DioExceptionType.receiveTimeout,
        requestOptions: RequestOptions(path: ''),
      ));

      expect(
        () => api.getWeather(lat: lat, lng: lng),
        throwsA(predicate((e) =>
            e is Exception && e.toString().contains('Failed to fetch weather: Receive timeout'))),
      );
    });
  });
}
