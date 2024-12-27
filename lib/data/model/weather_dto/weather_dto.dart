import 'package:json_annotation/json_annotation.dart';

part 'weather_dto.g.dart';

@JsonSerializable()
class WeatherDTO {
  const WeatherDTO({
    required this.temp,
    required this.condition,
    @JsonKey(name: 'feels_like') required this.feelsLike,
    @JsonKey(name: 'wind_speed') required this.windSpeed,
    required this.humidity,
  });

  final int temp;
  final String condition;
  final int feelsLike;
  final int windSpeed;
  final int humidity;

  factory WeatherDTO.fromJson(Map<String, Object?> json) =>
      _$WeatherDTOFromJson(json);
}
