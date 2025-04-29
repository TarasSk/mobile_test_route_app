// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Weather _$WeatherFromJson(Map<String, dynamic> json) => _Weather(
      description: json['description'] as String,
      temperature: (json['temperature'] as num).toDouble(),
    );

Map<String, dynamic> _$WeatherToJson(_Weather instance) => <String, dynamic>{
      'description': instance.description,
      'temperature': instance.temperature,
    };
