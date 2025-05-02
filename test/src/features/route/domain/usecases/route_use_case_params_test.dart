import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_test/src/features/route/domain/usecases/route_use_case_params.dart';

void main() {
  group('RouteUseCaseParams', () {
    test('should create valid RouteUseCaseParams', () {
      // Arrange: Set up the necessary conditions for the test.
      var params = RouteUseCaseParams(from: 'A', to: 'B');

      // Act: Create an instance of RouteUseCaseParams.

      // Assert: Verify the properties of the RouteUseCaseParams instance.
      expect(params.from, 'A');
      expect(params.to, 'B');
    });
  });
}