// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherDTOImpl _$$WeatherDTOImplFromJson(Map<String, dynamic> json) =>
    _$WeatherDTOImpl(
      temp: (json['temp'] as num).toInt(),
      condition: json['condition'] as String,
      feelsLike: (json['feels_like'] as num).toInt(),
      windSpeed: (json['wind_speed'] as num).toInt(),
      humidity: (json['humidity'] as num).toInt(),
    );

Map<String, dynamic> _$$WeatherDTOImplToJson(_$WeatherDTOImpl instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'condition': instance.condition,
      'feels_like': instance.feelsLike,
      'wind_speed': instance.windSpeed,
      'humidity': instance.humidity,
    };
