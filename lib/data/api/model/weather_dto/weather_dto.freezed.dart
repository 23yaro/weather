// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeatherDTO _$WeatherDTOFromJson(Map<String, dynamic> json) {
  return _WeatherDTO.fromJson(json);
}

/// @nodoc
mixin _$WeatherDTO {
  int get temp => throw _privateConstructorUsedError;
  String get condition => throw _privateConstructorUsedError;
  @JsonKey(name: "feels_like")
  int get feelsLike => throw _privateConstructorUsedError;
  @JsonKey(name: "wind_speed")
  int get windSpeed => throw _privateConstructorUsedError;
  int get humidity => throw _privateConstructorUsedError;

  /// Serializes this WeatherDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeatherDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeatherDTOCopyWith<WeatherDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherDTOCopyWith<$Res> {
  factory $WeatherDTOCopyWith(
          WeatherDTO value, $Res Function(WeatherDTO) then) =
      _$WeatherDTOCopyWithImpl<$Res, WeatherDTO>;
  @useResult
  $Res call(
      {int temp,
      String condition,
      @JsonKey(name: "feels_like") int feelsLike,
      @JsonKey(name: "wind_speed") int windSpeed,
      int humidity});
}

/// @nodoc
class _$WeatherDTOCopyWithImpl<$Res, $Val extends WeatherDTO>
    implements $WeatherDTOCopyWith<$Res> {
  _$WeatherDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeatherDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
    Object? condition = null,
    Object? feelsLike = null,
    Object? windSpeed = null,
    Object? humidity = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherDTOImplCopyWith<$Res>
    implements $WeatherDTOCopyWith<$Res> {
  factory _$$WeatherDTOImplCopyWith(
          _$WeatherDTOImpl value, $Res Function(_$WeatherDTOImpl) then) =
      __$$WeatherDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int temp,
      String condition,
      @JsonKey(name: "feels_like") int feelsLike,
      @JsonKey(name: "wind_speed") int windSpeed,
      int humidity});
}

/// @nodoc
class __$$WeatherDTOImplCopyWithImpl<$Res>
    extends _$WeatherDTOCopyWithImpl<$Res, _$WeatherDTOImpl>
    implements _$$WeatherDTOImplCopyWith<$Res> {
  __$$WeatherDTOImplCopyWithImpl(
      _$WeatherDTOImpl _value, $Res Function(_$WeatherDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeatherDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
    Object? condition = null,
    Object? feelsLike = null,
    Object? windSpeed = null,
    Object? humidity = null,
  }) {
    return _then(_$WeatherDTOImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherDTOImpl implements _WeatherDTO {
  const _$WeatherDTOImpl(
      {required this.temp,
      required this.condition,
      @JsonKey(name: "feels_like") required this.feelsLike,
      @JsonKey(name: "wind_speed") required this.windSpeed,
      required this.humidity});

  factory _$WeatherDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherDTOImplFromJson(json);

  @override
  final int temp;
  @override
  final String condition;
  @override
  @JsonKey(name: "feels_like")
  final int feelsLike;
  @override
  @JsonKey(name: "wind_speed")
  final int windSpeed;
  @override
  final int humidity;

  @override
  String toString() {
    return 'WeatherDTO(temp: $temp, condition: $condition, feelsLike: $feelsLike, windSpeed: $windSpeed, humidity: $humidity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherDTOImpl &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.feelsLike, feelsLike) ||
                other.feelsLike == feelsLike) &&
            (identical(other.windSpeed, windSpeed) ||
                other.windSpeed == windSpeed) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, temp, condition, feelsLike, windSpeed, humidity);

  /// Create a copy of WeatherDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherDTOImplCopyWith<_$WeatherDTOImpl> get copyWith =>
      __$$WeatherDTOImplCopyWithImpl<_$WeatherDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherDTOImplToJson(
      this,
    );
  }
}

abstract class _WeatherDTO implements WeatherDTO {
  const factory _WeatherDTO(
      {required final int temp,
      required final String condition,
      @JsonKey(name: "feels_like") required final int feelsLike,
      @JsonKey(name: "wind_speed") required final int windSpeed,
      required final int humidity}) = _$WeatherDTOImpl;

  factory _WeatherDTO.fromJson(Map<String, dynamic> json) =
      _$WeatherDTOImpl.fromJson;

  @override
  int get temp;
  @override
  String get condition;
  @override
  @JsonKey(name: "feels_like")
  int get feelsLike;
  @override
  @JsonKey(name: "wind_speed")
  int get windSpeed;
  @override
  int get humidity;

  /// Create a copy of WeatherDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeatherDTOImplCopyWith<_$WeatherDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
