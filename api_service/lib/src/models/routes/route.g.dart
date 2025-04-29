// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Route _$RouteFromJson(Map<String, dynamic> json) => _Route(
      duration: (json['duration'] as num).toInt(),
      distance: (json['distance'] as num).toInt(),
      steps: (json['steps'] as List<dynamic>)
          .map((e) => RouteStep.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RouteToJson(_Route instance) => <String, dynamic>{
      'duration': instance.duration,
      'distance': instance.distance,
      'steps': instance.steps,
    };
