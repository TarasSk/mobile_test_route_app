 import 'package:mobile_test/features/route/domain/entities/route_entity.dart';
 
abstract interface class  RouteRepository {
  Future<RouteEntity> getRoute({
    required String from,
    required String to,
  });
}