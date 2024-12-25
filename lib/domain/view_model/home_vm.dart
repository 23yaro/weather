import 'package:flutter/cupertino.dart';
import 'package:weather/domain/model/geo_permission.dart';
import 'package:weather/domain/model/weather.dart';
import 'package:weather/domain/usecase/weather_usecase.dart';

class HomeVM extends ChangeNotifier {
  HomeVM({required WeatherUseCase weatherUseCase})
      : _weatherUseCase = weatherUseCase;

  final WeatherUseCase _weatherUseCase;

  Weather? weather;
  GeoPermission? permission;

  Future<void> getWeather() async {
    permission = await _weatherUseCase.callGetGeoPermission();
    final location = await _weatherUseCase.callGetLocation();
    if (location != null) {
      weather = await _weatherUseCase.callGetWeather(
        latitude: location.latitude,
        longitude: location.longitude,
      );
    }
    notifyListeners();
  }
}
