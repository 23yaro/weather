import 'package:logger/logger.dart';
import 'package:weather/domain/model/geo_permission.dart';
import 'package:weather/domain/model/location/location.dart';
import 'package:weather/domain/model/weather/weather.dart';
import 'package:weather/domain/repository/weather_repository.dart';

class WeatherUseCase {
  const WeatherUseCase({
    required WeatherRepository weatherRepository,
    required Logger logger,
  })  : _logger = logger,
        _weatherRepository = weatherRepository;

  final WeatherRepository _weatherRepository;
  final Logger _logger;

  Future<Weather> callGetWeather({
    required Location location,
  }) async {
    try {
      final result = await _weatherRepository.getWeather(
        latitude: location.latitude,
        longitude: location.longitude,
      );
      return result;
    } catch (e, stacktrace) {
      _logger.e(e, stackTrace: stacktrace);
      rethrow;
    }
  }

  Future<GeoPermission> callGetGeoPermission() async {
    try {
      final result = await _weatherRepository.getGeoPermission();
      return result;
    } catch (e, stacktrace) {
      _logger.e(e, stackTrace: stacktrace);
    }
    return GeoPermission.denied;
  }

  Future<bool> callIsLocationEnabled() async {
    try {
      final result = await _weatherRepository.isLocationEnabled();
      return result;
    } catch (e, stacktrace) {
      _logger.e(e, stackTrace: stacktrace);
    }
    return false;
  }

  Future<Location> callGetLocation() async {
    try {
      final result = await _weatherRepository.getLocation();
      return result;
    } catch (e, stacktrace) {
      _logger.e(e, stackTrace: stacktrace);
      rethrow;
    }
  }
}
