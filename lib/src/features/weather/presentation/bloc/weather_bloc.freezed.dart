// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WeatherEvent {
  LocationModel get location;

  /// Create a copy of WeatherEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WeatherEventCopyWith<WeatherEvent> get copyWith =>
      _$WeatherEventCopyWithImpl<WeatherEvent>(
          this as WeatherEvent, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WeatherEvent &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(runtimeType, location);

  @override
  String toString() {
    return 'WeatherEvent(location: $location)';
  }
}

/// @nodoc
abstract mixin class $WeatherEventCopyWith<$Res> {
  factory $WeatherEventCopyWith(
          WeatherEvent value, $Res Function(WeatherEvent) _then) =
      _$WeatherEventCopyWithImpl;
  @useResult
  $Res call({LocationModel location});

  $LocationModelCopyWith<$Res> get location;
}

/// @nodoc
class _$WeatherEventCopyWithImpl<$Res> implements $WeatherEventCopyWith<$Res> {
  _$WeatherEventCopyWithImpl(this._self, this._then);

  final WeatherEvent _self;
  final $Res Function(WeatherEvent) _then;

  /// Create a copy of WeatherEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
  }) {
    return _then(_self.copyWith(
      location: null == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel,
    ));
  }

  /// Create a copy of WeatherEvent
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

class _FetchWeatherByLocation implements WeatherEvent {
  const _FetchWeatherByLocation({required this.location});

  @override
  final LocationModel location;

  /// Create a copy of WeatherEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FetchWeatherByLocationCopyWith<_FetchWeatherByLocation> get copyWith =>
      __$FetchWeatherByLocationCopyWithImpl<_FetchWeatherByLocation>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FetchWeatherByLocation &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(runtimeType, location);

  @override
  String toString() {
    return 'WeatherEvent.fetchWeatherByLocation(location: $location)';
  }
}

/// @nodoc
abstract mixin class _$FetchWeatherByLocationCopyWith<$Res>
    implements $WeatherEventCopyWith<$Res> {
  factory _$FetchWeatherByLocationCopyWith(_FetchWeatherByLocation value,
          $Res Function(_FetchWeatherByLocation) _then) =
      __$FetchWeatherByLocationCopyWithImpl;
  @override
  @useResult
  $Res call({LocationModel location});

  @override
  $LocationModelCopyWith<$Res> get location;
}

/// @nodoc
class __$FetchWeatherByLocationCopyWithImpl<$Res>
    implements _$FetchWeatherByLocationCopyWith<$Res> {
  __$FetchWeatherByLocationCopyWithImpl(this._self, this._then);

  final _FetchWeatherByLocation _self;
  final $Res Function(_FetchWeatherByLocation) _then;

  /// Create a copy of WeatherEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? location = null,
  }) {
    return _then(_FetchWeatherByLocation(
      location: null == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel,
    ));
  }

  /// Create a copy of WeatherEvent
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
mixin _$WeatherState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is WeatherState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'WeatherState()';
  }
}

/// @nodoc
class $WeatherStateCopyWith<$Res> {
  $WeatherStateCopyWith(WeatherState _, $Res Function(WeatherState) __);
}

/// @nodoc

class Initial implements WeatherState {
  const Initial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'WeatherState.initial()';
  }
}

/// @nodoc

class Loaded implements WeatherState {
  const Loaded({required final Map<LocationModel, WeatherModel> weather})
      : _weather = weather;

  final Map<LocationModel, WeatherModel> _weather;
  Map<LocationModel, WeatherModel> get weather {
    if (_weather is EqualUnmodifiableMapView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_weather);
  }

  /// Create a copy of WeatherState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoadedCopyWith<Loaded> get copyWith =>
      _$LoadedCopyWithImpl<Loaded>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Loaded &&
            const DeepCollectionEquality().equals(other._weather, _weather));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_weather));

  @override
  String toString() {
    return 'WeatherState.loaded(weather: $weather)';
  }
}

/// @nodoc
abstract mixin class $LoadedCopyWith<$Res>
    implements $WeatherStateCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) _then) =
      _$LoadedCopyWithImpl;
  @useResult
  $Res call({Map<LocationModel, WeatherModel> weather});
}

/// @nodoc
class _$LoadedCopyWithImpl<$Res> implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(this._self, this._then);

  final Loaded _self;
  final $Res Function(Loaded) _then;

  /// Create a copy of WeatherState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? weather = null,
  }) {
    return _then(Loaded(
      weather: null == weather
          ? _self._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as Map<LocationModel, WeatherModel>,
    ));
  }
}

/// @nodoc

class Error implements WeatherState {
  const Error({required this.message});

  final String message;

  /// Create a copy of WeatherState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Error &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'WeatherState.error(message: $message)';
  }
}

/// @nodoc
abstract mixin class $ErrorCopyWith<$Res>
    implements $WeatherStateCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) _then) =
      _$ErrorCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(this._self, this._then);

  final Error _self;
  final $Res Function(Error) _then;

  /// Create a copy of WeatherState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(Error(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
