// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'route_step_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RouteStepEntity {
  String get direction;
  LocationEntity get location;

  /// Create a copy of RouteStepEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RouteStepEntityCopyWith<RouteStepEntity> get copyWith =>
      _$RouteStepEntityCopyWithImpl<RouteStepEntity>(
          this as RouteStepEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RouteStepEntity &&
            (identical(other.direction, direction) ||
                other.direction == direction) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(runtimeType, direction, location);

  @override
  String toString() {
    return 'RouteStepEntity(direction: $direction, location: $location)';
  }
}

/// @nodoc
abstract mixin class $RouteStepEntityCopyWith<$Res> {
  factory $RouteStepEntityCopyWith(
          RouteStepEntity value, $Res Function(RouteStepEntity) _then) =
      _$RouteStepEntityCopyWithImpl;
  @useResult
  $Res call({String direction, LocationEntity location});

  $LocationEntityCopyWith<$Res> get location;
}

/// @nodoc
class _$RouteStepEntityCopyWithImpl<$Res>
    implements $RouteStepEntityCopyWith<$Res> {
  _$RouteStepEntityCopyWithImpl(this._self, this._then);

  final RouteStepEntity _self;
  final $Res Function(RouteStepEntity) _then;

  /// Create a copy of RouteStepEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? direction = null,
    Object? location = null,
  }) {
    return _then(_self.copyWith(
      direction: null == direction
          ? _self.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationEntity,
    ));
  }

  /// Create a copy of RouteStepEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationEntityCopyWith<$Res> get location {
    return $LocationEntityCopyWith<$Res>(_self.location, (value) {
      return _then(_self.copyWith(location: value));
    });
  }
}

/// @nodoc

class _RouteStepEntity implements RouteStepEntity {
  const _RouteStepEntity({required this.direction, required this.location});

  @override
  final String direction;
  @override
  final LocationEntity location;

  /// Create a copy of RouteStepEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RouteStepEntityCopyWith<_RouteStepEntity> get copyWith =>
      __$RouteStepEntityCopyWithImpl<_RouteStepEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RouteStepEntity &&
            (identical(other.direction, direction) ||
                other.direction == direction) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(runtimeType, direction, location);

  @override
  String toString() {
    return 'RouteStepEntity(direction: $direction, location: $location)';
  }
}

/// @nodoc
abstract mixin class _$RouteStepEntityCopyWith<$Res>
    implements $RouteStepEntityCopyWith<$Res> {
  factory _$RouteStepEntityCopyWith(
          _RouteStepEntity value, $Res Function(_RouteStepEntity) _then) =
      __$RouteStepEntityCopyWithImpl;
  @override
  @useResult
  $Res call({String direction, LocationEntity location});

  @override
  $LocationEntityCopyWith<$Res> get location;
}

/// @nodoc
class __$RouteStepEntityCopyWithImpl<$Res>
    implements _$RouteStepEntityCopyWith<$Res> {
  __$RouteStepEntityCopyWithImpl(this._self, this._then);

  final _RouteStepEntity _self;
  final $Res Function(_RouteStepEntity) _then;

  /// Create a copy of RouteStepEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? direction = null,
    Object? location = null,
  }) {
    return _then(_RouteStepEntity(
      direction: null == direction
          ? _self.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationEntity,
    ));
  }

  /// Create a copy of RouteStepEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationEntityCopyWith<$Res> get location {
    return $LocationEntityCopyWith<$Res>(_self.location, (value) {
      return _then(_self.copyWith(location: value));
    });
  }
}

// dart format on
