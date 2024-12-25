import 'package:weather/data/api/model/location_dto/location_dto.dart';

abstract class ILocationService{
  /// Получить текущее местоположение
  ///
  /// Возвращвет [Future] с [LocationDto]
  Future<LocationDTO> getLocation();

}