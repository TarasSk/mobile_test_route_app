import 'package:freezed_annotation/freezed_annotation.dart';
import 'location.dart';

part 'route_step.freezed.dart';
part 'route_step.g.dart';

@freezed
abstract class RouteStep with _$RouteStep {
  const factory RouteStep({
    required String? direction,
    required Location location,
  }) = _RouteStep;

  factory RouteStep.fromJson(Map<String, dynamic> json) => _$RouteStepFromJson(json);
}
