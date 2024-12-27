import 'package:geolocator/geolocator.dart';
import 'package:weather/data/api/location_api/location_api.dart';
import 'package:weather/data/model/location_dto/location_dto.dart';

class LocationApiImpl implements LocationApi {
  const LocationApiImpl();

  @override
  Future<LocationDTO> getLocation() async {
    final data = await Geolocator.getCurrentPosition(
      locationSettings: LocationSettings(timeLimit: Duration(seconds: 30)),
    );

    return LocationDTO(
      latitude: data.latitude,
      longitude: data.longitude,
    );
  }
}
