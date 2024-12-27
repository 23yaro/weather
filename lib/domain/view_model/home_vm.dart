import 'package:flutter/material.dart';
import 'package:weather/domain/model/geo_permission.dart';
import 'package:weather/domain/model/weather/weather.dart';
import 'package:weather/domain/usecase/weather_usecase.dart';

class HomeVM extends ChangeNotifier {
  HomeVM({required WeatherUseCase weatherUseCase})
      : _weatherUseCase = weatherUseCase;

  final WeatherUseCase _weatherUseCase;

  Weather? weather;
  bool? isLocationEnabled;
  GeoPermission? permission;

  Future<void> getWeather(context) async {
    isLocationEnabled = await _weatherUseCase.callIsLocationEnabled();
    if (isLocationEnabled == false) {
      await showDialog(
        context: context,
        builder: (context) => AlertDialog(
          content: Text('Включите геолокацию'),
        ),
      );
      return;
    }

    permission = await _weatherUseCase.callGetGeoPermission();
    if (permission == GeoPermission.disabled) {
      await showDialog(
        context: context,
        builder: (context) => AlertDialog(
          content: Text('Нужен доступ к геолокации'),
        ),
      );
      return;
    }

    try {
      final location = await _weatherUseCase.callGetLocation();

      if (location != null) {
        weather = await _weatherUseCase.callGetWeather(
          latitude: location.latitude,
          longitude: location.longitude,
        );
        notifyListeners();
      }
    } catch (_) {
      await showDialog(
        context: context,
        builder: (context) => AlertDialog(
          content: Text('Отсутствует подключение к интернету'),
        ),
      );
    }
  }
}
