import 'package:flutter/material.dart';
import 'package:weather/domain/domain.dart';
import 'package:weather/domain/usecase/weather_usecase.dart';

class HomeVM extends ChangeNotifier {
  HomeVM({required WeatherUseCase weatherUseCase})
      : _weatherUseCase = weatherUseCase;

  final WeatherUseCase _weatherUseCase;

  HomeState state = HomeState.init;

  Weather? weather;

  Future<void> getWeather() async {
    state = HomeState.load;
    notifyListeners();
    final isLocationEnabled = await _weatherUseCase.callIsLocationEnabled();
    if (!isLocationEnabled) {
      state = HomeState.locationDisabled;
      notifyListeners();
      return;
    }

    final permission = await _weatherUseCase.callGetGeoPermission();
    if (permission == GeoPermission.denied) {
      state = HomeState.permissionDenied;
      notifyListeners();
      return;
    }
    if (permission == GeoPermission.alwaysDenied) {
      state = HomeState.permissionAlwaysDenied;
      notifyListeners();
      return;
    }

    try {
      final location = await _weatherUseCase.callGetLocation();
      final weather = await _weatherUseCase.callGetWeather(location: location);
      this.weather = weather;
      state = HomeState.loaded;
    } catch (_) {
      state = HomeState.internetDisabled;
      notifyListeners();
    }
    notifyListeners();
  }
}

enum HomeState {
  init,
  load,
  permissionDenied,
  permissionAlwaysDenied,
  locationDisabled,
  internetDisabled,
  loaded,
}
