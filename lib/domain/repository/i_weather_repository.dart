import 'package:weather/domain/model/weather.dart';

abstract class IWeatherRepository {
  /// Получить [Weather]
  ///
  /// Возвращвет модель погоды
  Future<Weather> getWeather({
    required double latitude,
    required double longitude,
  });
}
