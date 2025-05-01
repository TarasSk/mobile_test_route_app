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

class Initial extends RouteState with DiagnosticableTreeMixin {
  const Initial({required this.from, required this.to}) : super._();

  final String from;
  final String to;

  /// Create a copy of RouteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InitialCopyWith<Initial> get copyWith =>
      _$InitialCopyWithImpl<Initial>(this, _$identity);

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
            other is Initial &&
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
abstract mixin class $InitialCopyWith<$Res>
    implements $RouteStateCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) _then) =
      _$InitialCopyWithImpl;
  @useResult
  $Res call({String from, String to});
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(this._self, this._then);

  final Initial _self;
  final $Res Function(Initial) _then;

  /// Create a copy of RouteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? from = null,
    Object? to = null,
  }) {
    return _then(Initial(
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

class LoadInProgress extends RouteState with DiagnosticableTreeMixin {
  const LoadInProgress() : super._();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'RouteState.loading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RouteState.loading()';
  }
}

/// @nodoc

class LoadSuccess extends RouteState with DiagnosticableTreeMixin {
  const LoadSuccess({required this.route, required this.from, required this.to})
      : super._();

  final RouteModel route;
  final String from;
  final String to;

  /// Create a copy of RouteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      _$LoadSuccessCopyWithImpl<LoadSuccess>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'RouteState.loaded'))
      ..add(DiagnosticsProperty('route', route))
      ..add(DiagnosticsProperty('from', from))
      ..add(DiagnosticsProperty('to', to));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadSuccess &&
            (identical(other.route, route) || other.route == route) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to));
  }

  @override
  int get hashCode => Object.hash(runtimeType, route, from, to);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RouteState.loaded(route: $route, from: $from, to: $to)';
  }
}

/// @nodoc
abstract mixin class $LoadSuccessCopyWith<$Res>
    implements $RouteStateCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) _then) =
      _$LoadSuccessCopyWithImpl;
  @useResult
  $Res call({RouteModel route, String from, String to});

  $RouteModelCopyWith<$Res> get route;
}

/// @nodoc
class _$LoadSuccessCopyWithImpl<$Res> implements $LoadSuccessCopyWith<$Res> {
  _$LoadSuccessCopyWithImpl(this._self, this._then);

  final LoadSuccess _self;
  final $Res Function(LoadSuccess) _then;

  /// Create a copy of RouteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? route = null,
    Object? from = null,
    Object? to = null,
  }) {
    return _then(LoadSuccess(
      route: null == route
          ? _self.route
          : route // ignore: cast_nullable_to_non_nullable
              as RouteModel,
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
