import 'package:weather/data/api/model/weather_dto/weather_dto.dart';

abstract class IWeatherService{
  /// Получить текущую погоду
  ///
  /// Возвращвет [Future] c [WeatherDTO]
  Future<WeatherDTO> getWeather({
    required double latitude,
    required double longitude,
  });
}