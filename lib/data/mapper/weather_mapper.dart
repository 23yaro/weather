import 'package:flutter/material.dart';
import 'package:weather/data/model/weather_dto/weather_dto.dart';
import 'package:weather/domain/model/weather/weather.dart';
import 'package:weather/ui/consts/icons.dart';

class WeatherMapper {
  static Weather fromDTO(WeatherDTO weatherDTO) {
    return Weather(
      temp: weatherDTO.temp,
      condition: _getWeatherConditions(weatherDTO.condition),
      feelsLike: weatherDTO.feelsLike,
      windSpeed: weatherDTO.windSpeed,
      humidity: weatherDTO.humidity,
      date: DateTime.now(),
      conditionIcon: _getConditionIcons(weatherDTO.condition),
    );
  }

  static Icon _getConditionIcons(String condition) => switch (condition) {
        'clear' => WeatherIcons.clear,
        // ясно
        'partly-cloudy' => WeatherIcons.partlyCloudy,
        // малооблачно
        'cloudy' => WeatherIcons.cloudy,
        // облачно с прояснениями
        'overcast' => WeatherIcons.overcast,
        // пасмурно
        'light-rain' => WeatherIcons.lightRain,
        // небольшой дождь
        'rain' => WeatherIcons.rain,
        // дождь
        'heavy-rain' => WeatherIcons.heavyRain,
        // сильный дождь
        'showers' => WeatherIcons.showers,
        // ливень
        'wet-snow' => WeatherIcons.wetSnow,
        // дождь со снегом
        'light-snow' => WeatherIcons.lightSnow,
        // небольшой снег
        'snow' => WeatherIcons.snow,
        // снег
        'snow-showers' => WeatherIcons.snowShowers,
        // снегопад
        'hail' => WeatherIcons.hail,
        // град
        'thunderstorm' => WeatherIcons.thunderstorm,
        // гроза
        'thunderstorm-with-rain' => WeatherIcons.thunderstormWithRain,
        // дождь с грозой
        'thunderstorm-with-hail' => WeatherIcons.thunderstormWithHail,
        // гроза с градом
        _ => _getCurrentTimeIcon(),
      };

  static String _getWeatherConditions(String condition) => switch (condition) {
        'clear' => 'Ясно',
        'partly-cloudy' => 'Малооблачно',
        'cloudy' => 'Облачно с прояснениями',
        'overcast' => 'Пасмурно',
        'light-rain' => 'Небольшой дождь',
        'rain' => 'Дождь',
        'heavy-rain' => 'Сильный дождь',
        'showers' => 'Ливень',
        'wet-snow' => 'Дождь со снегом',
        'light-snow' => 'Небольшой снег',
        'snow' => 'Снег',
        'snow-showers' => 'Снегопад',
        'hail' => 'Град',
        'thunderstorm' => 'Гроза',
        'thunderstorm-with-rain' => 'Дождь с грозой',
        'thunderstorm-with-hail' => 'Гроза с градом',
        _ => 'Облачно',
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
