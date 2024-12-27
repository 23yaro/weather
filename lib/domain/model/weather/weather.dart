import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather.freezed.dart';

@freezed
class Weather with _$Weather {
  const factory Weather({
    required int temp,
    required String condition,
    required int feelsLike,
    required int windSpeed,
    required int humidity,
    required DateTime date,
    required Icon conditionIcon,
  }) = _Weather;
}
