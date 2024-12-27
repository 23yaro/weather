import 'package:geolocator/geolocator.dart';
import 'package:weather/data/api/permission_api/permission_api.dart';

class PermissionApiImpl implements PermissionApi {
  const PermissionApiImpl({required this.geolocator});

  final Geolocator geolocator;

  @override
  Future<LocationPermission> getGeoPermission() async {
    LocationPermission permission;
    permission = await Geolocator.checkPermission();
    return permission;
  }

  @override
  Future<bool> isLocationEnabled() async {
    return Geolocator.isLocationServiceEnabled();
  }
}
