import 'package:geolocator/geolocator.dart';
import 'package:weather/domain/model/geo_permission.dart';

class GeoPermissionMapper {
  static GeoPermission fromDTO(LocationPermission locationPermission) {
    return switch (locationPermission) {
      LocationPermission.denied => GeoPermission.denied,
      LocationPermission.deniedForever => GeoPermission.alwaysDenied,
      LocationPermission.whileInUse => GeoPermission.accepted,
      LocationPermission.always => GeoPermission.accepted,
      LocationPermission.unableToDetermine => GeoPermission.denied,
    };
  }
}
