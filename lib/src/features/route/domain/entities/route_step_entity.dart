import 'package:freezed_annotation/freezed_annotation.dart';
import 'location_entity.dart';

part 'route_step_entity.freezed.dart';

@freezed
abstract class RouteStepEntity with _$RouteStepEntity {
  const factory RouteStepEntity({
    required String direction,
    required LocationEntity location,
  }) = _RouteStepEntity;
}
