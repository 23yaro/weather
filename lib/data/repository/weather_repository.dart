import 'package:weather/data/api/api.dart';
import 'package:weather/data/mapper/mapper.dart';
import 'package:weather/domain/model/models.dart';
import 'package:weather/domain/repository/i_weather_repository.dart';

class WeatherRepository implements IWeatherRepository {
  const WeatherRepository({
    required ILocationApi locationService,
    required IPermissionApi permissionService,
    required IWeatherApi weatherService,
  })  : _permissionService = permissionService,
        _locationService = locationService,
        _weatherService = weatherService;

  final IWeatherApi _weatherService;
  final ILocationApi _locationService;
  final IPermissionApi _permissionService;

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
  Future<GeoPermission> getGeoPermission() {
    return _permissionService.getGeoPermission();
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
