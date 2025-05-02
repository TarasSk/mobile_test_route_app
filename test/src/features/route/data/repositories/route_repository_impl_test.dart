import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_test/src/features/route/domain/entities/location_entity.dart';
import 'package:mobile_test/src/features/route/domain/entities/route_step_entity.dart';
import 'package:mocktail/mocktail.dart';
import 'package:mobile_test/src/features/route/data/repositories/route_repository_impl.dart';
import 'package:mobile_test/src/features/route/data/converters/route_entity_converter.dart';
import 'package:mobile_test/src/features/route/domain/entities/route_entity.dart';
import 'package:api_service/api_service.dart';

class MockApi extends Mock implements Api {}

class MockRouteEntityConverter extends Mock implements RouteEntityConverter {}

void main() {
  late MockApi mockApi;
  late MockRouteEntityConverter mockConverter;
  late RouteRepositoryImpl repository;

  setUp(() {
    mockApi = MockApi();
    mockConverter = MockRouteEntityConverter();
    repository = RouteRepositoryImpl(api: mockApi, converter: mockConverter);
  });

  group('getRoute', () {
    const from = 'LocationA';
    const to = 'LocationB';
    final mockResponseData = Route(
        duration: 1,
        distance: 1,
        steps: [RouteStep(direction: 'direction', location: Location(lat: 1, lng: 1))]);
    final mockRouteEntity = RouteEntity(
        duration: 1,
        distance: 1,
        steps: [RouteStepEntity(direction: 'direction', location: LocationEntity(lat: 1, lng: 1))]);
    test('should return RouteEntity when API call is successful and data is not null', () async {
      when(() => mockApi.getRoute(from: from, to: to)).thenAnswer(
          (_) async => Response(data: mockResponseData, requestOptions: RequestOptions()));
      when(() => mockConverter.convert(mockResponseData)).thenReturn(mockRouteEntity);

      final result = await repository.getRoute(from: from, to: to);

      expect(result, mockRouteEntity);
      verify(() => mockApi.getRoute(from: from, to: to)).called(1);
      verify(() => mockConverter.convert(mockResponseData)).called(1);
    });
  });
}
