import 'package:weather/data/api/service/location_service/i_location_service.dart';
import 'package:weather/data/api/service/permission_service/i_permission_service.dart';
import 'package:weather/data/api/service/weather_service/i_weather_service.dart';
import 'package:weather/data/mapper/location_mapper.dart';
import 'package:weather/data/mapper/weather_mapper.dart';
import 'package:weather/domain/model/geo_permission.dart';
import 'package:weather/domain/model/location.dart';
import 'package:weather/domain/model/weather.dart';
import 'package:weather/domain/repository/i_weather_repository.dart';

class WeatherRepository implements IWeatherRepository {
  const WeatherRepository({
    required this.locationService,
    required this.permissionService,
    required this.weatherService,
  });

  final IWeatherService weatherService;
  final ILocationService locationService;
  final IPermissionService permissionService;

  @override
  Future<Weather> getWeather(
      {required double latitude, required double longitude,}) async {
    return WeatherMapper.fromDTO(
      await weatherService.getWeather(
        latitude: latitude,
        longitude: longitude,
      ),
    );
  }

  @override
  Future<GeoPermission> getGeoPermission() {
    return permissionService.getGeoPermission();
  }

  @override
  Future<bool> isLocationEnabled() {
    return permissionService.isLocationEnabled();
  }

  @override
  Future<Location> getLocation() async{
    return LocationMapper.fromDTO(await locationService.getLocation());
  }
}
