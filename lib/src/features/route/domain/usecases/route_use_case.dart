import 'package:mobile_test/src/core/use_case.dart';
import 'package:mobile_test/src/features/route/domain/entities/route_entity.dart';
import 'package:mobile_test/src/features/route/domain/repositories/route_repository.dart';
import 'package:mobile_test/src/features/route/domain/usecases/route_use_case_params.dart';

class RouteUseCase extends UseCase<RouteEntity, RouteUseCaseParams> {
  RouteUseCase({
    required RouteRepository repository,
  }) : _repository = repository;

  final RouteRepository _repository;

  @override
  Future<RouteEntity> call(RouteUseCaseParams params) {
    return _repository.getRoute(from: params.from, to: params.to);
  }
}
