import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_test/src/features/route/presentation/models/route_step_model.dart';


part 'route_model.freezed.dart';

@freezed
abstract class RouteModel with _$RouteModel {
  const RouteModel._();
  const factory RouteModel({
    required int duration, 
    required int distance,
    required List<RouteStepModel> steps,
  }) = _RouteModel;


  String get distanceInKm => '${(distance / 1000).toStringAsFixed(1)} km';
  String get durationInMinutes => '${(duration / 60).toStringAsFixed(1)} min';
  String get durationinHoursAndMinutes {
    final hours = (duration / 3600).floor();
    final minutes = ((duration % 3600) / 60).floor();
    return '$hours h $minutes min';
  }
}

