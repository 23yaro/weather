import 'package:weather/domain/model/geo_permission.dart';

abstract class IPermissionApi {
  /// Проверяет включено ли местоположение
  ///
  /// Возвращает [Future] типа [bool]
  Future<bool> isLocationEnabled();

  /// Получить разрешение на определение местоположения
  ///
  /// Возвращает [Future] типа [GeoPermission]
  Future<GeoPermission> getGeoPermission();
}
