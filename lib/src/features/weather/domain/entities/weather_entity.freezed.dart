// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WeatherEntity {
  String get description;
  double get temperature;

  /// Create a copy of WeatherEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WeatherEntityCopyWith<WeatherEntity> get copyWith =>
      _$WeatherEntityCopyWithImpl<WeatherEntity>(this as WeatherEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WeatherEntity &&
            (identical(other.description, description) || other.description == description) &&
            (identical(other.temperature, temperature) || other.temperature == temperature));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description, temperature);

  @override
  String toString() {
    return 'WeatherEntity(description: $description, temperature: $temperature)';
  }
}

/// @nodoc
abstract mixin class $WeatherEntityCopyWith<$Res> {
  factory $WeatherEntityCopyWith(WeatherEntity value, $Res Function(WeatherEntity) _then) =
      _$WeatherEntityCopyWithImpl;
  @useResult
  $Res call({String description, double temperature});
}

/// @nodoc
class _$WeatherEntityCopyWithImpl<$Res> implements $WeatherEntityCopyWith<$Res> {
  _$WeatherEntityCopyWithImpl(this._self, this._then);

  final WeatherEntity _self;
  final $Res Function(WeatherEntity) _then;

  /// Create a copy of WeatherEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? temperature = null,
  }) {
    return _then(_self.copyWith(
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: null == temperature
          ? _self.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _WeatherEntity implements WeatherEntity {
  const _WeatherEntity({required this.description, required this.temperature});

  @override
  final String description;
  @override
  final double temperature;

  /// Create a copy of WeatherEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WeatherEntityCopyWith<_WeatherEntity> get copyWith =>
      __$WeatherEntityCopyWithImpl<_WeatherEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherEntity &&
            (identical(other.description, description) || other.description == description) &&
            (identical(other.temperature, temperature) || other.temperature == temperature));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description, temperature);

  @override
  String toString() {
    return 'WeatherEntity(description: $description, temperature: $temperature)';
  }
}

/// @nodoc
abstract mixin class _$WeatherEntityCopyWith<$Res> implements $WeatherEntityCopyWith<$Res> {
  factory _$WeatherEntityCopyWith(_WeatherEntity value, $Res Function(_WeatherEntity) _then) =
      __$WeatherEntityCopyWithImpl;
  @override
  @useResult
  $Res call({String description, double temperature});
}

/// @nodoc
class __$WeatherEntityCopyWithImpl<$Res> implements _$WeatherEntityCopyWith<$Res> {
  __$WeatherEntityCopyWithImpl(this._self, this._then);

  final _WeatherEntity _self;
  final $Res Function(_WeatherEntity) _then;

  /// Create a copy of WeatherEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? description = null,
    Object? temperature = null,
  }) {
    return _then(_WeatherEntity(
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: null == temperature
          ? _self.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

// dart format on
