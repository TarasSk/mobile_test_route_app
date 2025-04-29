// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LocationEntity {
  double get lat;
  double get lng;

  /// Create a copy of LocationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LocationEntityCopyWith<LocationEntity> get copyWith =>
      _$LocationEntityCopyWithImpl<LocationEntity>(
          this as LocationEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LocationEntity &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lat, lng);

  @override
  String toString() {
    return 'LocationEntity(lat: $lat, lng: $lng)';
  }
}

/// @nodoc
abstract mixin class $LocationEntityCopyWith<$Res> {
  factory $LocationEntityCopyWith(
          LocationEntity value, $Res Function(LocationEntity) _then) =
      _$LocationEntityCopyWithImpl;
  @useResult
  $Res call({double lat, double lng});
}

/// @nodoc
class _$LocationEntityCopyWithImpl<$Res>
    implements $LocationEntityCopyWith<$Res> {
  _$LocationEntityCopyWithImpl(this._self, this._then);

  final LocationEntity _self;
  final $Res Function(LocationEntity) _then;

  /// Create a copy of LocationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_self.copyWith(
      lat: null == lat
          ? _self.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _self.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _LocationEntity implements LocationEntity {
  const _LocationEntity({required this.lat, required this.lng});

  @override
  final double lat;
  @override
  final double lng;

  /// Create a copy of LocationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LocationEntityCopyWith<_LocationEntity> get copyWith =>
      __$LocationEntityCopyWithImpl<_LocationEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocationEntity &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lat, lng);

  @override
  String toString() {
    return 'LocationEntity(lat: $lat, lng: $lng)';
  }
}

/// @nodoc
abstract mixin class _$LocationEntityCopyWith<$Res>
    implements $LocationEntityCopyWith<$Res> {
  factory _$LocationEntityCopyWith(
          _LocationEntity value, $Res Function(_LocationEntity) _then) =
      __$LocationEntityCopyWithImpl;
  @override
  @useResult
  $Res call({double lat, double lng});
}

/// @nodoc
class __$LocationEntityCopyWithImpl<$Res>
    implements _$LocationEntityCopyWith<$Res> {
  __$LocationEntityCopyWithImpl(this._self, this._then);

  final _LocationEntity _self;
  final $Res Function(_LocationEntity) _then;

  /// Create a copy of LocationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_LocationEntity(
      lat: null == lat
          ? _self.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _self.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

// dart format on
