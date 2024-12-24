import 'package:flutter/material.dart';

class Weather {
  const Weather({
    required this.temp,
    required this.condition,
    required this.feelsLike,
    required this.windSpeed,
    required this.humidity,
  });

  /// Температура
  final int temp;

  /// Ощущаемая температура
  final int feelsLike;

  /// Погодное описание
  final String condition;

  /// Скорость ветра
  final int windSpeed;

  /// Влажность
  final int humidity;

  /// Возвращает [IconData] текущих погодных условий
  IconData? getConditionIcon() => _conditionIcons[condition];

  static const Map<String, IconData> _conditionIcons = {
    'clear': Icons.wb_sunny, // ясно
    'partly-cloudy': Icons.cloud, // малооблачно
    'cloudy': Icons.cloud, // облачно с прояснениями
    'overcast': Icons.cloud_queue, // пасмурно
    'light-rain': Icons.grain, // небольшой дождь
    'rain': Icons.beach_access, // дождь
    'heavy-rain': Icons.grain, // сильный дождь
    'showers': Icons.opacity, // ливень
    'wet-snow': Icons.ac_unit, // дождь со снегом
    'light-snow': Icons.ac_unit, // небольшой снег
    'snow': Icons.ac_unit, // снег
    'snow-showers': Icons.ac_unit, // снегопад
    'hail': Icons.ac_unit, // град
    'thunderstorm': Icons.flash_on, // гроза
    'thunderstorm-with-rain': Icons.flash_on, // дождь с грозой
    'thunderstorm-with-hail': Icons.flash_on, // гроза с градом
  };
}
