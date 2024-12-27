import 'package:weather/data/api/api.dart';
import 'package:weather/data/mapper/mapper.dart';
import 'package:weather/domain/model/models.dart';
import 'package:weather/domain/repository/i_weather_repository.dart';

class WeatherRepository implements IWeatherRepository {
  const WeatherRepository({
    required LocationApi locationService,
    required PermissionApi permissionService,
    required WeatherApi weatherService,
  })  : _permissionService = permissionService,
        _locationService = locationService,
        _weatherService = weatherService;

  final WeatherApi _weatherService;
  final LocationApi _locationService;
  final PermissionApi _permissionService;

  @override
  Future<Weather> getWeather({
    required double latitude,
    required double longitude,
  }) async {
    return WeatherMapper.fromDTO(
      await _weatherService.getWeather(
        latitude: latitude,
        longitude: longitude,
      ),
    );
  }

  @override
  Future<GeoPermission> getGeoPermission() async{
    return GeoPermissionMapper.fromDTO(await _permissionService.getGeoPermission());
  }

  @override
  Future<bool> isLocationEnabled() {
    return _permissionService.isLocationEnabled();
  }

  @override
  Future<Location> getLocation() async {
    return LocationMapper.fromDTO(await _locationService.getLocation());
  }
}
