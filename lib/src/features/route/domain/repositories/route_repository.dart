 import 'package:mobile_test/src/features/route/domain/entities/route_entity.dart';

abstract interface class  RouteRepository {
  Future<RouteEntity> getRoute({
    required String from,
    required String to,
  });
}