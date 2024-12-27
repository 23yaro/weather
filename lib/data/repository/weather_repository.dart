import 'package:weather/data/api/api.dart';
import 'package:weather/data/mapper/mapper.dart';
import 'package:weather/domain/model/models.dart';
import 'package:weather/domain/repository/weather_repository.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  const WeatherRepositoryImpl({
    required LocationApi locationService,
    required PermissionApi permissionService,
    required WeatherApi weatherService,
  })  : _permissionApi = permissionService,
        _locationApi = locationService,
        _weatherApi = weatherService;

  final WeatherApi _weatherApi;
  final LocationApi _locationApi;
  final PermissionApi _permissionApi;

  @override
  Future<Weather> getWeather({
    required double latitude,
    required double longitude,
  }) async {
    return WeatherMapper.fromDTO(
      await _weatherApi.getWeather(
        latitude: latitude,
        longitude: longitude,
      ),
    );
  }

  @override
  Future<GeoPermission> getGeoPermission() async {
    return GeoPermissionMapper.fromDTO(
      await _permissionApi.getGeoPermission(),
    );
  }

  @override
  Future<bool> isLocationEnabled() {
    return _permissionApi.isLocationEnabled();
  }

  @override
  Future<Location> getLocation() async {
    return LocationMapper.fromDTO(await _locationApi.getLocation());
  }
}
