import 'package:weather/domain/model/geo_permission.dart';
import 'package:weather/domain/model/location/location.dart';
import 'package:weather/domain/model/weather/weather.dart';

abstract class IWeatherRepository {
  /// Получить модель погоды
  ///
  /// Возвращвет [Weather]
  Future<Weather> getWeather({
    required double latitude,
    required double longitude,
  });

  /// Получить модель пермишинов
  ///
  /// Возвращвет [GeoPermission]
  Future<GeoPermission> getGeoPermission();

  /// Проверка включения геолокации
  ///
  /// Возвращвет [bool]
  Future<bool> isLocationEnabled();

  /// Получить геолокацию
  ///
  /// Возвращвет [Location]
  Future<Location> getLocation();
}
