import 'package:flutter/material.dart';

class Weather {
  const Weather({
    required this.temp,
    required this.condition,
    required this.feelsLike,
    required this.windSpeed,
    required this.humidity,
    required this.date,
    required this.conditionIcon,
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

  /// Время запроса погоды
  final DateTime date;

  /// Иконка погодного описания
  final Icon conditionIcon;
}
