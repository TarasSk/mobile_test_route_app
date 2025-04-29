import 'package:freezed_annotation/freezed_annotation.dart';
import 'route_step.dart';

part 'route.freezed.dart';
part 'route.g.dart';

@freezed
abstract class Route with _$Route {
  const factory Route({
    required int duration,
    required int distance,
    required List<RouteStep> steps,
  }) = _Route;

  factory Route.fromJson(Map<String, dynamic> json) =>
      _$RouteFromJson(json);
}