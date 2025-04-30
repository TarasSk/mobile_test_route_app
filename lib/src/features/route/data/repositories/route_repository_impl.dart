import 'package:api_service/api_service.dart';
import 'package:mobile_test/src/features/route/data/converters/route_entity_converter.dart';
import 'package:mobile_test/src/features/route/domain/entities/route_entity.dart';
import 'package:mobile_test/src/features/route/domain/repositories/route_repository.dart';

class RouteRepositoryImpl implements RouteRepository {
  RouteRepositoryImpl({
    required Api api,
    required RouteEntityConverter converter,
  })  : _api = api,
        _converter = converter;

  final Api _api;
  final RouteEntityConverter _converter;

  @override
  Future<RouteEntity> getRoute({required String from, required String to}) async {
    final response = await _api.getRoute(from: from, to: to);
    final data = response.data;
    if (data != null) {
      return _converter.convert(data);
    }
    throw Exception('Failed to fetch route: data is null');
  }
}
