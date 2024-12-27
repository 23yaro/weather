import 'package:geolocator/geolocator.dart';
import 'package:weather/data/api/permission_api/i_permission_api.dart';
import 'package:weather/domain/model/geo_permission.dart';

class PermissionApi implements IPermissionApi {
  const PermissionApi({required this.geolocator});

  final Geolocator geolocator;

  @override
  Future<GeoPermission> getGeoPermission() async {
    LocationPermission permission;

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return GeoPermission.disabled;
      }
    }
    return GeoPermission.enabled;
  }

  @override
  Future<bool> isLocationEnabled() async {
    return Geolocator.isLocationServiceEnabled();
  }
}
