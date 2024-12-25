import 'package:weather/data/api/model/location_dto/location_dto.dart';
import 'package:weather/domain/model/location.dart';

class LocationMapper {
  static Location fromDTO(LocationDTO locationDTO) {
    return Location(
      latitude: locationDTO.latitude,
      longitude: locationDTO.longitude,
    );
  }
}
