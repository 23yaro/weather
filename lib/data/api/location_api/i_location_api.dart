import 'package:weather/data/model/location_dto/location_dto.dart';

abstract class ILocationApi {
  /// Получить текущее местоположение
  ///
  /// Возвращвет [Future] с [LocationDto]
  Future<LocationDTO> getLocation();
}
