// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'route_step_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RouteStepModel {
  String get direction;
  LocationModel get location;

  /// Create a copy of RouteStepModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RouteStepModelCopyWith<RouteStepModel> get copyWith =>
      _$RouteStepModelCopyWithImpl<RouteStepModel>(this as RouteStepModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RouteStepModel &&
            (identical(other.direction, direction) || other.direction == direction) &&
            (identical(other.location, location) || other.location == location));
  }

  @override
  int get hashCode => Object.hash(runtimeType, direction, location);

  @override
  String toString() {
    return 'RouteStepModel(direction: $direction, location: $location)';
  }
}

/// @nodoc
abstract mixin class $RouteStepModelCopyWith<$Res> {
  factory $RouteStepModelCopyWith(RouteStepModel value, $Res Function(RouteStepModel) _then) =
      _$RouteStepModelCopyWithImpl;
  @useResult
  $Res call({String direction, LocationModel location});

  $LocationModelCopyWith<$Res> get location;
}

/// @nodoc
class _$RouteStepModelCopyWithImpl<$Res> implements $RouteStepModelCopyWith<$Res> {
  _$RouteStepModelCopyWithImpl(this._self, this._then);

  final RouteStepModel _self;
  final $Res Function(RouteStepModel) _then;

  /// Create a copy of RouteStepModel
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
              as LocationModel,
    ));
  }

  /// Create a copy of RouteStepModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<$Res> get location {
    return $LocationModelCopyWith<$Res>(_self.location, (value) {
      return _then(_self.copyWith(location: value));
    });
  }
}

/// @nodoc

class _RouteStepModel implements RouteStepModel {
  const _RouteStepModel({required this.direction, required this.location});

  @override
  final String direction;
  @override
  final LocationModel location;

  /// Create a copy of RouteStepModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RouteStepModelCopyWith<_RouteStepModel> get copyWith =>
      __$RouteStepModelCopyWithImpl<_RouteStepModel>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RouteStepModel &&
            (identical(other.direction, direction) || other.direction == direction) &&
            (identical(other.location, location) || other.location == location));
  }

  @override
  int get hashCode => Object.hash(runtimeType, direction, location);

  @override
  String toString() {
    return 'RouteStepModel(direction: $direction, location: $location)';
  }
}

/// @nodoc
abstract mixin class _$RouteStepModelCopyWith<$Res> implements $RouteStepModelCopyWith<$Res> {
  factory _$RouteStepModelCopyWith(_RouteStepModel value, $Res Function(_RouteStepModel) _then) =
      __$RouteStepModelCopyWithImpl;
  @override
  @useResult
  $Res call({String direction, LocationModel location});

  @override
  $LocationModelCopyWith<$Res> get location;
}

/// @nodoc
class __$RouteStepModelCopyWithImpl<$Res> implements _$RouteStepModelCopyWith<$Res> {
  __$RouteStepModelCopyWithImpl(this._self, this._then);

  final _RouteStepModel _self;
  final $Res Function(_RouteStepModel) _then;

  /// Create a copy of RouteStepModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? direction = null,
    Object? location = null,
  }) {
    return _then(_RouteStepModel(
      direction: null == direction
          ? _self.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel,
    ));
  }

  /// Create a copy of RouteStepModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationModelCopyWith<$Res> get location {
    return $LocationModelCopyWith<$Res>(_self.location, (value) {
      return _then(_self.copyWith(location: value));
    });
  }
}

// dart format on
