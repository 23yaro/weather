import 'package:geolocator/geolocator.dart';
import 'package:weather/data/api/permission_api/permission_api.dart';

class PermissionApiImpl implements PermissionApi {
  const PermissionApiImpl();

  @override
  Future<LocationPermission> getGeoPermission() async {
    LocationPermission permission;
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }
    return permission;
  }

  @override
  Future<bool> isLocationEnabled() async {
    return Geolocator.isLocationServiceEnabled();
  }
}
