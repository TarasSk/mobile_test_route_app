// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'route.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Route {
  int get duration;
  int get distance;
  List<RouteStep> get steps;

  /// Create a copy of Route
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RouteCopyWith<Route> get copyWith =>
      _$RouteCopyWithImpl<Route>(this as Route, _$identity);

  /// Serializes this Route to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Route &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            const DeepCollectionEquality().equals(other.steps, steps));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, duration, distance,
      const DeepCollectionEquality().hash(steps));

  @override
  String toString() {
    return 'Route(duration: $duration, distance: $distance, steps: $steps)';
  }
}

/// @nodoc
abstract mixin class $RouteCopyWith<$Res> {
  factory $RouteCopyWith(Route value, $Res Function(Route) _then) =
      _$RouteCopyWithImpl;
  @useResult
  $Res call({int duration, int distance, List<RouteStep> steps});
}

/// @nodoc
class _$RouteCopyWithImpl<$Res> implements $RouteCopyWith<$Res> {
  _$RouteCopyWithImpl(this._self, this._then);

  final Route _self;
  final $Res Function(Route) _then;

  /// Create a copy of Route
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
              as List<RouteStep>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Route implements Route {
  const _Route(
      {required this.duration,
      required this.distance,
      required final List<RouteStep> steps})
      : _steps = steps;
  factory _Route.fromJson(Map<String, dynamic> json) => _$RouteFromJson(json);

  @override
  final int duration;
  @override
  final int distance;
  final List<RouteStep> _steps;
  @override
  List<RouteStep> get steps {
    if (_steps is EqualUnmodifiableListView) return _steps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_steps);
  }

  /// Create a copy of Route
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RouteCopyWith<_Route> get copyWith =>
      __$RouteCopyWithImpl<_Route>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RouteToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Route &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            const DeepCollectionEquality().equals(other._steps, _steps));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, duration, distance,
      const DeepCollectionEquality().hash(_steps));

  @override
  String toString() {
    return 'Route(duration: $duration, distance: $distance, steps: $steps)';
  }
}

/// @nodoc
abstract mixin class _$RouteCopyWith<$Res> implements $RouteCopyWith<$Res> {
  factory _$RouteCopyWith(_Route value, $Res Function(_Route) _then) =
      __$RouteCopyWithImpl;
  @override
  @useResult
  $Res call({int duration, int distance, List<RouteStep> steps});
}

/// @nodoc
class __$RouteCopyWithImpl<$Res> implements _$RouteCopyWith<$Res> {
  __$RouteCopyWithImpl(this._self, this._then);

  final _Route _self;
  final $Res Function(_Route) _then;

  /// Create a copy of Route
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? duration = null,
    Object? distance = null,
    Object? steps = null,
  }) {
    return _then(_Route(
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
              as List<RouteStep>,
    ));
  }
}

// dart format on
