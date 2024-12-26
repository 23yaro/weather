import 'package:logger/logger.dart';
import 'package:weather/domain/model/geo_permission.dart';
import 'package:weather/domain/model/location.dart';
import 'package:weather/domain/model/weather.dart';
import 'package:weather/domain/repository/i_weather_repository.dart';

class WeatherUseCase {
  const WeatherUseCase({
    required IWeatherRepository weatherRepository,
    required Logger logger,
  })  : _logger = logger,
        _weatherRepository = weatherRepository;

  final IWeatherRepository _weatherRepository;
  final Logger _logger;

  Future<Weather?> callGetWeather({
    required double latitude,
    required double longitude,
  }) async {
    try {
      final result = await _weatherRepository.getWeather(
        latitude: latitude,
        longitude: longitude,
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
    return GeoPermission.disabled;
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

  Future<Location?> callGetLocation() async {
    try {
      final result = await _weatherRepository.getLocation();
      return result;
    } catch (e, stacktrace) {
      _logger.e(e, stackTrace: stacktrace);
    }
    return null;
  }
}
