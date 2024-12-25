import 'package:geolocator/geolocator.dart';
import 'package:weather/data/api/model/location_dto/location_dto.dart';
import 'package:weather/data/api/service/location_service/i_location_service.dart';

class LocationService implements ILocationService {
  const LocationService({required this.geolocator});

  final Geolocator geolocator;

  @override
  Future<LocationDTO> getLocation() async {
    final data = await Geolocator.getCurrentPosition();

    return LocationDTO(
      latitude: data.latitude,
      longitude: data.longitude,
    );
  }
}
