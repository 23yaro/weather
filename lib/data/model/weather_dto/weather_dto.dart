import 'package:json_annotation/json_annotation.dart';

part 'weather_dto.g.dart';

@JsonSerializable()
class WeatherDTO {
  const WeatherDTO({
    required this.temp,
    required this.condition,
    required this.feelsLike,
    required this.windSpeed,
    required this.humidity,
  });

  final int temp;
  final String condition;
  @JsonKey(name: 'feels_like')
  final int feelsLike;
  @JsonKey(name: 'wind_speed')
  final int windSpeed;
  final int humidity;

  factory WeatherDTO.fromJson(Map<String, Object?> json) =>
      _$WeatherDTOFromJson(json);
}
