// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'route_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RouteEntity {
  int get duration;
  int get distance;
  List<RouteStepEntity> get steps;

  /// Create a copy of RouteEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RouteEntityCopyWith<RouteEntity> get copyWith =>
      _$RouteEntityCopyWithImpl<RouteEntity>(this as RouteEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RouteEntity &&
            (identical(other.duration, duration) || other.duration == duration) &&
            (identical(other.distance, distance) || other.distance == distance) &&
            const DeepCollectionEquality().equals(other.steps, steps));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, duration, distance, const DeepCollectionEquality().hash(steps));

  @override
  String toString() {
    return 'RouteEntity(duration: $duration, distance: $distance, steps: $steps)';
  }
}

/// @nodoc
abstract mixin class $RouteEntityCopyWith<$Res> {
  factory $RouteEntityCopyWith(RouteEntity value, $Res Function(RouteEntity) _then) =
      _$RouteEntityCopyWithImpl;
  @useResult
  $Res call({int duration, int distance, List<RouteStepEntity> steps});
}

/// @nodoc
class _$RouteEntityCopyWithImpl<$Res> implements $RouteEntityCopyWith<$Res> {
  _$RouteEntityCopyWithImpl(this._self, this._then);

  final RouteEntity _self;
  final $Res Function(RouteEntity) _then;

  /// Create a copy of RouteEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
    Object? distance = null,
    Object? steps = null,
  }) {
    return _then(_self.copyWith(
      duration: null == duration
          ? _self.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      distance: null == distance
          ? _self.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int,
      steps: null == steps
          ? _self.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<RouteStepEntity>,
    ));
  }
}

/// @nodoc

class _RouteEntity extends RouteEntity {
  const _RouteEntity(
      {required this.duration, required this.distance, required final List<RouteStepEntity> steps})
      : _steps = steps,
        super._();

  @override
  final int duration;
  @override
  final int distance;
  final List<RouteStepEntity> _steps;
  @override
  List<RouteStepEntity> get steps {
    if (_steps is EqualUnmodifiableListView) return _steps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_steps);
  }

  /// Create a copy of RouteEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RouteEntityCopyWith<_RouteEntity> get copyWith =>
      __$RouteEntityCopyWithImpl<_RouteEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RouteEntity &&
            (identical(other.duration, duration) || other.duration == duration) &&
            (identical(other.distance, distance) || other.distance == distance) &&
            const DeepCollectionEquality().equals(other._steps, _steps));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, duration, distance, const DeepCollectionEquality().hash(_steps));

  @override
  String toString() {
    return 'RouteEntity(duration: $duration, distance: $distance, steps: $steps)';
  }
}

/// @nodoc
abstract mixin class _$RouteEntityCopyWith<$Res> implements $RouteEntityCopyWith<$Res> {
  factory _$RouteEntityCopyWith(_RouteEntity value, $Res Function(_RouteEntity) _then) =
      __$RouteEntityCopyWithImpl;
  @override
  @useResult
  $Res call({int duration, int distance, List<RouteStepEntity> steps});
}

/// @nodoc
class __$RouteEntityCopyWithImpl<$Res> implements _$RouteEntityCopyWith<$Res> {
  __$RouteEntityCopyWithImpl(this._self, this._then);

  final _RouteEntity _self;
  final $Res Function(_RouteEntity) _then;

  /// Create a copy of RouteEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? duration = null,
    Object? distance = null,
    Object? steps = null,
  }) {
    return _then(_RouteEntity(
      duration: null == duration
          ? _self.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      distance: null == distance
          ? _self.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int,
      steps: null == steps
          ? _self._steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<RouteStepEntity>,
    ));
  }
}

// dart format on
