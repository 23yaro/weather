import 'package:weather/data/model/location_dto/location_dto.dart';

abstract class LocationApi {
  /// Получить текущее местоположение
  ///
  /// Возвращвет [Future] с [LocationDto]
  Future<LocationDTO> getLocation();
}
