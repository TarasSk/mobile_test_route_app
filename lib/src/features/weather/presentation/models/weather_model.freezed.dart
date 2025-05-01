// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WeatherModel {
  String get description;
  double get temperature;

  /// Create a copy of WeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WeatherModelCopyWith<WeatherModel> get copyWith =>
      _$WeatherModelCopyWithImpl<WeatherModel>(this as WeatherModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WeatherModel &&
            (identical(other.description, description) || other.description == description) &&
            (identical(other.temperature, temperature) || other.temperature == temperature));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description, temperature);

  @override
  String toString() {
    return 'WeatherModel(description: $description, temperature: $temperature)';
  }
}

/// @nodoc
abstract mixin class $WeatherModelCopyWith<$Res> {
  factory $WeatherModelCopyWith(WeatherModel value, $Res Function(WeatherModel) _then) =
      _$WeatherModelCopyWithImpl;
  @useResult
  $Res call({String description, double temperature});
}

/// @nodoc
class _$WeatherModelCopyWithImpl<$Res> implements $WeatherModelCopyWith<$Res> {
  _$WeatherModelCopyWithImpl(this._self, this._then);

  final WeatherModel _self;
  final $Res Function(WeatherModel) _then;

  /// Create a copy of WeatherModel
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

class _WeatherModel extends WeatherModel {
  const _WeatherModel({required this.description, required this.temperature}) : super._();

  @override
  final String description;
  @override
  final double temperature;

  /// Create a copy of WeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WeatherModelCopyWith<_WeatherModel> get copyWith =>
      __$WeatherModelCopyWithImpl<_WeatherModel>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherModel &&
            (identical(other.description, description) || other.description == description) &&
            (identical(other.temperature, temperature) || other.temperature == temperature));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description, temperature);

  @override
  String toString() {
    return 'WeatherModel(description: $description, temperature: $temperature)';
  }
}

/// @nodoc
abstract mixin class _$WeatherModelCopyWith<$Res> implements $WeatherModelCopyWith<$Res> {
  factory _$WeatherModelCopyWith(_WeatherModel value, $Res Function(_WeatherModel) _then) =
      __$WeatherModelCopyWithImpl;
  @override
  @useResult
  $Res call({String description, double temperature});
}

/// @nodoc
class __$WeatherModelCopyWithImpl<$Res> implements _$WeatherModelCopyWith<$Res> {
  __$WeatherModelCopyWithImpl(this._self, this._then);

  final _WeatherModel _self;
  final $Res Function(_WeatherModel) _then;

  /// Create a copy of WeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? description = null,
    Object? temperature = null,
  }) {
    return _then(_WeatherModel(
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
