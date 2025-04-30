import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_test/src/features/route/presentation/models/location_model.dart';

part 'route_step_model.freezed.dart';

@freezed
abstract class RouteStepModel with _$RouteStepModel {
  const factory RouteStepModel({
    required String direction,
    required LocationModel location,
  }) = _RouteStepModel;
}

