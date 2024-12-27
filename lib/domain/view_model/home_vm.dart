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

    final permission = await _weatherUseCase.callGetGeoPermission();
    if (permission == GeoPermission.denied) {
      state = HomeState.permissionDenied;
      notifyListeners();
      return;
    }

    final isLocationEnabled = await _weatherUseCase.callIsLocationEnabled();
    if (!isLocationEnabled) {
      state = HomeState.locationDisabled;
      notifyListeners();
      return;
    }

    final location = await _weatherUseCase.callGetLocation();
    if (location == null) {
      state = HomeState.loadingError;
      notifyListeners();
      return;
    }

    try {
      final weather = await _weatherUseCase.callGetWeather(location: location);
      this.weather = weather;
      state = HomeState.loaded;
    } catch (_) {
      state = HomeState.internetDisabled;
    }
    notifyListeners();
  }
}

enum HomeState {
  init,
  load,
  permissionDenied,
  locationDisabled,
  loadingError,
  internetDisabled,
  loaded,
}
