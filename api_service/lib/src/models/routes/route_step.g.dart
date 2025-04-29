// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_step.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RouteStep _$RouteStepFromJson(Map<String, dynamic> json) => _RouteStep(
      direction: json['direction'] as String,
      location: Location.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RouteStepToJson(_RouteStep instance) =>
    <String, dynamic>{
      'direction': instance.direction,
      'location': instance.location,
    };
