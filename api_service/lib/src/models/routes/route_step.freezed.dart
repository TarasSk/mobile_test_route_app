// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'route_step.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RouteStep {
  String? get direction;
  Location get location;

  /// Create a copy of RouteStep
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RouteStepCopyWith<RouteStep> get copyWith =>
      _$RouteStepCopyWithImpl<RouteStep>(this as RouteStep, _$identity);

  /// Serializes this RouteStep to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RouteStep &&
            (identical(other.direction, direction) || other.direction == direction) &&
            (identical(other.location, location) || other.location == location));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, direction, location);

  @override
  String toString() {
    return 'RouteStep(direction: $direction, location: $location)';
  }
}

/// @nodoc
abstract mixin class $RouteStepCopyWith<$Res> {
  factory $RouteStepCopyWith(RouteStep value, $Res Function(RouteStep) _then) =
      _$RouteStepCopyWithImpl;
  @useResult
  $Res call({String? direction, Location location});

  $LocationCopyWith<$Res> get location;
}

/// @nodoc
class _$RouteStepCopyWithImpl<$Res> implements $RouteStepCopyWith<$Res> {
  _$RouteStepCopyWithImpl(this._self, this._then);

  final RouteStep _self;
  final $Res Function(RouteStep) _then;

  /// Create a copy of RouteStep
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? direction = freezed,
    Object? location = null,
  }) {
    return _then(_self.copyWith(
      direction: freezed == direction
          ? _self.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String?,
      location: null == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
    ));
  }

  /// Create a copy of RouteStep
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res> get location {
    return $LocationCopyWith<$Res>(_self.location, (value) {
      return _then(_self.copyWith(location: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _RouteStep implements RouteStep {
  const _RouteStep({required this.direction, required this.location});
  factory _RouteStep.fromJson(Map<String, dynamic> json) => _$RouteStepFromJson(json);

  @override
  final String? direction;
  @override
  final Location location;

  /// Create a copy of RouteStep
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RouteStepCopyWith<_RouteStep> get copyWith =>
      __$RouteStepCopyWithImpl<_RouteStep>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RouteStepToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RouteStep &&
            (identical(other.direction, direction) || other.direction == direction) &&
            (identical(other.location, location) || other.location == location));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, direction, location);

  @override
  String toString() {
    return 'RouteStep(direction: $direction, location: $location)';
  }
}

/// @nodoc
abstract mixin class _$RouteStepCopyWith<$Res> implements $RouteStepCopyWith<$Res> {
  factory _$RouteStepCopyWith(_RouteStep value, $Res Function(_RouteStep) _then) =
      __$RouteStepCopyWithImpl;
  @override
  @useResult
  $Res call({String? direction, Location location});

  @override
  $LocationCopyWith<$Res> get location;
}

/// @nodoc
class __$RouteStepCopyWithImpl<$Res> implements _$RouteStepCopyWith<$Res> {
  __$RouteStepCopyWithImpl(this._self, this._then);

  final _RouteStep _self;
  final $Res Function(_RouteStep) _then;

  /// Create a copy of RouteStep
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? direction = freezed,
    Object? location = null,
  }) {
    return _then(_RouteStep(
      direction: freezed == direction
          ? _self.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String?,
      location: null == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
    ));
  }

  /// Create a copy of RouteStep
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res> get location {
    return $LocationCopyWith<$Res>(_self.location, (value) {
      return _then(_self.copyWith(location: value));
    });
  }
}

// dart format on
