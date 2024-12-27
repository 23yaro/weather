import 'package:flutter/material.dart';
import 'package:weather/data/model/weather_dto/weather_dto.dart';
import 'package:weather/domain/model/weather/weather.dart';
import 'package:weather/ui/consts/icons.dart';

class WeatherMapper {
  static Weather fromDTO(WeatherDTO weatherDTO) {
    return Weather(
      temp: weatherDTO.temp,
      condition: _weatherConditions[weatherDTO.condition] ?? _getCurrentTime(),
      feelsLike: weatherDTO.feelsLike,
      windSpeed: weatherDTO.windSpeed,
      humidity: weatherDTO.humidity,
      date: DateTime.now(),
      conditionIcon:
          _conditionIcons[weatherDTO.condition] ?? _getCurrentTimeIcon(),
    );
  }

  static final Map<String, Icon> _conditionIcons = {
    'clear': WeatherIcons.clear,
    // ясно
    'partly-cloudy': WeatherIcons.partlyCloudy,
    // малооблачно
    'cloudy': WeatherIcons.cloudy,
    // облачно с прояснениями
    'overcast': WeatherIcons.overcast,
    // пасмурно
    'light-rain': WeatherIcons.lightRain,
    // небольшой дождь
    'rain': WeatherIcons.rain,
    // дождь
    'heavy-rain': WeatherIcons.heavyRain,
    // сильный дождь
    'showers': WeatherIcons.showers,
    // ливень
    'wet-snow': WeatherIcons.wetSnow,
    // дождь со снегом
    'light-snow': WeatherIcons.lightSnow,
    // небольшой снег
    'snow': WeatherIcons.snow,
    // снег
    'snow-showers': WeatherIcons.snowShowers,
    // снегопад
    'hail': WeatherIcons.hail,
    // град
    'thunderstorm': WeatherIcons.thunderstorm,
    // гроза
    'thunderstorm-with-rain': WeatherIcons.thunderstormWithRain,
    // дождь с грозой
    'thunderstorm-with-hail': WeatherIcons.thunderstormWithHail,
    // гроза с градом
  };

  static const Map<String, String> _weatherConditions = {
    'clear': 'ясно',
    'partly-cloudy': 'малооблачно',
    'cloudy': 'облачно с прояснениями',
    'overcast': 'пасмурно',
    'light-rain': 'небольшой дождь',
    'rain': 'дождь',
    'heavy-rain': 'сильный дождь',
    'showers': 'ливень',
    'wet-snow': 'дождь со снегом',
    'light-snow': 'небольшой снег',
    'snow': 'снег',
    'snow-showers': 'снегопад',
    'hail': 'град',
    'thunderstorm': 'гроза',
    'thunderstorm-with-rain': 'дождь с грозой',
    'thunderstorm-with-hail': 'гроза с градом',
  };

  /// Определяем денб сейчас или ночь, с api информация такая не приходит*
  static Icon _getCurrentTimeIcon() {
    final now = DateTime.now();

    final hour = now.hour;

    final isDaytime = hour >= 6 && hour < 18;

    return Icon(
      isDaytime ? Icons.wb_sunny : Icons.nights_stay,
      size: 100,
      color: isDaytime ? Colors.yellow : Colors.blue,
    );
  }

  static String _getCurrentTime() {
    final now = DateTime.now();

    final hour = now.hour;

    final isDaytime = hour >= 6 && hour < 18;

    return isDaytime ? 'День' : 'Ночь';
  }
}
