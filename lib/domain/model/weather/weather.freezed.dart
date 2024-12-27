// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Weather {
  int get temp => throw _privateConstructorUsedError;
  String get condition => throw _privateConstructorUsedError;
  int get feelsLike => throw _privateConstructorUsedError;
  int get windSpeed => throw _privateConstructorUsedError;
  int get humidity => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  Icon get conditionIcon => throw _privateConstructorUsedError;

  /// Create a copy of Weather
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeatherCopyWith<Weather> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherCopyWith<$Res> {
  factory $WeatherCopyWith(Weather value, $Res Function(Weather) then) =
      _$WeatherCopyWithImpl<$Res, Weather>;
  @useResult
  $Res call(
      {int temp,
      String condition,
      int feelsLike,
      int windSpeed,
      int humidity,
      DateTime date,
      Icon conditionIcon});
}

/// @nodoc
class _$WeatherCopyWithImpl<$Res, $Val extends Weather>
    implements $WeatherCopyWith<$Res> {
  _$WeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Weather
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
    Object? condition = null,
    Object? feelsLike = null,
    Object? windSpeed = null,
    Object? humidity = null,
    Object? date = null,
    Object? conditionIcon = null,
  }) {
    return _then(_value.copyWith(
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as int,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String,
      feelsLike: null == feelsLike
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as int,
      windSpeed: null == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as int,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      conditionIcon: null == conditionIcon
          ? _value.conditionIcon
          : conditionIcon // ignore: cast_nullable_to_non_nullable
              as Icon,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherImplCopyWith<$Res> implements $WeatherCopyWith<$Res> {
  factory _$$WeatherImplCopyWith(
          _$WeatherImpl value, $Res Function(_$WeatherImpl) then) =
      __$$WeatherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int temp,
      String condition,
      int feelsLike,
      int windSpeed,
      int humidity,
      DateTime date,
      Icon conditionIcon});
}

/// @nodoc
class __$$WeatherImplCopyWithImpl<$Res>
    extends _$WeatherCopyWithImpl<$Res, _$WeatherImpl>
    implements _$$WeatherImplCopyWith<$Res> {
  __$$WeatherImplCopyWithImpl(
      _$WeatherImpl _value, $Res Function(_$WeatherImpl) _then)
      : super(_value, _then);

  /// Create a copy of Weather
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
    Object? condition = null,
    Object? feelsLike = null,
    Object? windSpeed = null,
    Object? humidity = null,
    Object? date = null,
    Object? conditionIcon = null,
  }) {
    return _then(_$WeatherImpl(
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as int,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String,
      feelsLike: null == feelsLike
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as int,
      windSpeed: null == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as int,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      conditionIcon: null == conditionIcon
          ? _value.conditionIcon
          : conditionIcon // ignore: cast_nullable_to_non_nullable
              as Icon,
    ));
  }
}

/// @nodoc

class _$WeatherImpl implements _Weather {
  const _$WeatherImpl(
      {required this.temp,
      required this.condition,
      required this.feelsLike,
      required this.windSpeed,
      required this.humidity,
      required this.date,
      required this.conditionIcon});

  @override
  final int temp;
  @override
  final String condition;
  @override
  final int feelsLike;
  @override
  final int windSpeed;
  @override
  final int humidity;
  @override
  final DateTime date;
  @override
  final Icon conditionIcon;

  @override
  String toString() {
    return 'Weather(temp: $temp, condition: $condition, feelsLike: $feelsLike, windSpeed: $windSpeed, humidity: $humidity, date: $date, conditionIcon: $conditionIcon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherImpl &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.feelsLike, feelsLike) ||
                other.feelsLike == feelsLike) &&
            (identical(other.windSpeed, windSpeed) ||
                other.windSpeed == windSpeed) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.conditionIcon, conditionIcon) ||
                other.conditionIcon == conditionIcon));
  }

  @override
  int get hashCode => Object.hash(runtimeType, temp, condition, feelsLike,
      windSpeed, humidity, date, conditionIcon);

  /// Create a copy of Weather
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherImplCopyWith<_$WeatherImpl> get copyWith =>
      __$$WeatherImplCopyWithImpl<_$WeatherImpl>(this, _$identity);
}

abstract class _Weather implements Weather {
  const factory _Weather(
      {required final int temp,
      required final String condition,
      required final int feelsLike,
      required final int windSpeed,
      required final int humidity,
      required final DateTime date,
      required final Icon conditionIcon}) = _$WeatherImpl;

  @override
  int get temp;
  @override
  String get condition;
  @override
  int get feelsLike;
  @override
  int get windSpeed;
  @override
  int get humidity;
  @override
  DateTime get date;
  @override
  Icon get conditionIcon;

  /// Create a copy of Weather
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeatherImplCopyWith<_$WeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
