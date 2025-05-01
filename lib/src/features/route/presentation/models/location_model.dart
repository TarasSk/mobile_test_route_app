import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_model.freezed.dart';

@freezed
abstract class LocationModel with _$LocationModel {
  const LocationModel._();
  const factory LocationModel({
    required double lat,
    required double lng,
  }) = _LocationModel;

  String get stringKey => '$lat,$lng';
}