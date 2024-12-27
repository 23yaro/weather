import 'package:weather/data/model/weather_dto/weather_dto.dart';

abstract class WeatherApi {
  /// Получить текущую погоду
  ///
  /// Возвращвет [Future] c [WeatherDTO]
  Future<WeatherDTO> getWeather({
    required double latitude,
    required double longitude,
  });
}
