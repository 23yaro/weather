import 'package:weather/data/api/model/weather_dto.dart';

abstract class IWeatherService{
  /// Получить [WeatherDTO]
  ///
  /// Возвращвет дто погоды
  Future<WeatherDTO> getWeather({
    required double latitude,
    required double longitude,
  });
}