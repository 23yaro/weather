import 'package:weather/data/api/model/weather_dto/weather_dto.dart';
import 'package:weather/domain/model/weather.dart';

class WeatherMapper {
  static Weather fromDTO(WeatherDTO weatherDTO) {
    return Weather(
      temp: weatherDTO.temp,
      condition: weatherDTO.condition,
      feelsLike: weatherDTO.feelsLike,
      windSpeed: weatherDTO.windSpeed,
      humidity: weatherDTO.humidity,
    );
  }
}
