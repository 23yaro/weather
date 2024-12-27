import 'package:geolocator/geolocator.dart';
import 'package:weather/data/api/location_api/i_location_api.dart';
import 'package:weather/data/model/location_dto/location_dto.dart';

class LocationApi implements ILocationApi {
  const LocationApi({required this.geolocator});

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
