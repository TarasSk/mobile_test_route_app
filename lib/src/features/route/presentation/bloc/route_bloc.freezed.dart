// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'route_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RouteState implements DiagnosticableTreeMixin {
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'RouteState'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RouteState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RouteState()';
  }
}

/// @nodoc
class $RouteStateCopyWith<$Res> {
  $RouteStateCopyWith(RouteState _, $Res Function(RouteState) __);
}

/// @nodoc

class _Initial extends RouteState with DiagnosticableTreeMixin {
  const _Initial({required this.from, required this.to}) : super._();

  final String from;
  final String to;

  /// Create a copy of RouteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'RouteState.initial'))
      ..add(DiagnosticsProperty('from', from))
      ..add(DiagnosticsProperty('to', to));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to));
  }

  @override
  int get hashCode => Object.hash(runtimeType, from, to);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RouteState.initial(from: $from, to: $to)';
  }
}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res>
    implements $RouteStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) =
      __$InitialCopyWithImpl;
  @useResult
  $Res call({String from, String to});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

  /// Create a copy of RouteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? from = null,
    Object? to = null,
  }) {
    return _then(_Initial(
      from: null == from
          ? _self.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _self.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _LoadInProgress extends RouteState with DiagnosticableTreeMixin {
  const _LoadInProgress() : super._();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'RouteState.loading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RouteState.loading()';
  }
}

/// @nodoc

class _LoadSuccess extends RouteState with DiagnosticableTreeMixin {
  const _LoadSuccess({required this.route}) : super._();

  final RouteModel route;

  /// Create a copy of RouteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'RouteState.loaded'))
      ..add(DiagnosticsProperty('route', route));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadSuccess &&
            (identical(other.route, route) || other.route == route));
  }

  @override
  int get hashCode => Object.hash(runtimeType, route);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RouteState.loaded(route: $route)';
  }
}

/// @nodoc
abstract mixin class _$LoadSuccessCopyWith<$Res>
    implements $RouteStateCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) _then) =
      __$LoadSuccessCopyWithImpl;
  @useResult
  $Res call({RouteModel route});

  $RouteModelCopyWith<$Res> get route;
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res> implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(this._self, this._then);

  final _LoadSuccess _self;
  final $Res Function(_LoadSuccess) _then;

  /// Create a copy of RouteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? route = null,
  }) {
    return _then(_LoadSuccess(
      route: null == route
          ? _self.route
          : route // ignore: cast_nullable_to_non_nullable
              as RouteModel,
    ));
  }

  /// Create a copy of RouteState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RouteModelCopyWith<$Res> get route {
    return $RouteModelCopyWith<$Res>(_self.route, (value) {
      return _then(_self.copyWith(route: value));
    });
  }
}

/// @nodoc
mixin _$RouteEvent implements DiagnosticableTreeMixin {
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'RouteEvent'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RouteEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RouteEvent()';
  }
}

/// @nodoc
class $RouteEventCopyWith<$Res> {
  $RouteEventCopyWith(RouteEvent _, $Res Function(RouteEvent) __);
}

/// @nodoc

class _FromChanged with DiagnosticableTreeMixin implements RouteEvent {
  const _FromChanged({required this.from});

  final String from;

  /// Create a copy of RouteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FromChangedCopyWith<_FromChanged> get copyWith =>
      __$FromChangedCopyWithImpl<_FromChanged>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'RouteEvent.onFromChanged'))
      ..add(DiagnosticsProperty('from', from));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FromChanged &&
            (identical(other.from, from) || other.from == from));
  }

  @override
  int get hashCode => Object.hash(runtimeType, from);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RouteEvent.onFromChanged(from: $from)';
  }
}

/// @nodoc
abstract mixin class _$FromChangedCopyWith<$Res>
    implements $RouteEventCopyWith<$Res> {
  factory _$FromChangedCopyWith(
          _FromChanged value, $Res Function(_FromChanged) _then) =
      __$FromChangedCopyWithImpl;
  @useResult
  $Res call({String from});
}

/// @nodoc
class __$FromChangedCopyWithImpl<$Res> implements _$FromChangedCopyWith<$Res> {
  __$FromChangedCopyWithImpl(this._self, this._then);

  final _FromChanged _self;
  final $Res Function(_FromChanged) _then;

  /// Create a copy of RouteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? from = null,
  }) {
    return _then(_FromChanged(
      from: null == from
          ? _self.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _ToChanged with DiagnosticableTreeMixin implements RouteEvent {
  const _ToChanged({required this.to});

  final String to;

  /// Create a copy of RouteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ToChangedCopyWith<_ToChanged> get copyWith =>
      __$ToChangedCopyWithImpl<_ToChanged>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'RouteEvent.onToChanged'))
      ..add(DiagnosticsProperty('to', to));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ToChanged &&
            (identical(other.to, to) || other.to == to));
  }

  @override
  int get hashCode => Object.hash(runtimeType, to);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RouteEvent.onToChanged(to: $to)';
  }
}

/// @nodoc
abstract mixin class _$ToChangedCopyWith<$Res>
    implements $RouteEventCopyWith<$Res> {
  factory _$ToChangedCopyWith(
          _ToChanged value, $Res Function(_ToChanged) _then) =
      __$ToChangedCopyWithImpl;
  @useResult
  $Res call({String to});
}

/// @nodoc
class __$ToChangedCopyWithImpl<$Res> implements _$ToChangedCopyWith<$Res> {
  __$ToChangedCopyWithImpl(this._self, this._then);

  final _ToChanged _self;
  final $Res Function(_ToChanged) _then;

  /// Create a copy of RouteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? to = null,
  }) {
    return _then(_ToChanged(
      to: null == to
          ? _self.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _LoadRoute with DiagnosticableTreeMixin implements RouteEvent {
  const _LoadRoute();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'RouteEvent.loadRoute'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadRoute);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RouteEvent.loadRoute()';
  }
}

// dart format on
