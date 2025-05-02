import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:mobile_test/src/features/route/domain/repositories/route_repository.dart';
import 'package:mobile_test/src/features/route/domain/usecases/route_use_case.dart';
import 'package:mobile_test/src/features/route/domain/usecases/route_use_case_params.dart';

import '../../../../../mock_entities.dart';

class MockRouteRepository extends Mock implements RouteRepository {}

void main() {
  group('RouteUseCase', () {
    late RouteUseCase routeUseCase;
    late MockRouteRepository mockRouteRepository;

    setUp(() {
      mockRouteRepository = MockRouteRepository();
      routeUseCase = RouteUseCase(repository: mockRouteRepository);
    });

    test('should return RouteEntity when repository call is successful', () async {
      // Arrange
      var params = RouteUseCaseParams(from: 'A', to: 'B');
      when(() => mockRouteRepository.getRoute(from: 'A', to: 'B'))
          .thenAnswer((_) async => mockRouteEntity);

      // Act
      final result = await routeUseCase.call(params);

      // Assert
      expect(result, mockRouteEntity);
      verify(() => mockRouteRepository.getRoute(from: 'A', to: 'B')).called(1);
    });

    test('should throw an exception when repository call fails', () async {
      // Arrange
      var params = RouteUseCaseParams(from: 'A', to: 'B');
      when(() => mockRouteRepository.getRoute(from: 'A', to: 'B'))
          .thenThrow(Exception('Failed to fetch route'));

      // Act
      final call = routeUseCase.call;

      // Assert
      expect(() => call(params), throwsException);
      verify(() => mockRouteRepository.getRoute(from: 'A', to: 'B')).called(1);
    });
  });
}
