import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_dto.freezed.dart';
part 'weather_dto.g.dart';

@freezed
class WeatherDTO with _$WeatherDTO {
  const factory WeatherDTO({
    required int temp,
    required String condition,
    @JsonKey(name: 'feels_like') required int feelsLike,
    @JsonKey(name: 'wind_speed') required int windSpeed,
    required int humidity,
  }) = _WeatherDTO;

  factory WeatherDTO.fromJson(Map<String, Object?> json)
  => _$WeatherDTOFromJson(json);
}
