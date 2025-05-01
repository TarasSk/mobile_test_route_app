import 'package:freezed_annotation/freezed_annotation.dart';
import 'route_step_entity.dart';

part 'route_entity.freezed.dart';

@freezed
abstract class RouteEntity with _$RouteEntity {
  const RouteEntity._();
  const factory RouteEntity({
    required int duration,
    required int distance,
    required List<RouteStepEntity> steps,
  }) = _RouteEntity;

  double get distanceInKm => distance / 1000;
  double get durationInMinutes => duration / 60;
}
