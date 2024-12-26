import 'package:flutter/material.dart';

abstract class WeatherIcons {
  static const Icon clear =
      Icon(Icons.wb_sunny, size: 80, color: Colors.yellow);

  static const Icon partlyCloudy =
      Icon(Icons.cloud, size: 80, color: Colors.blueGrey);

  static const Icon cloudy = Icon(Icons.cloud, size: 80, color: Colors.grey);

  static const Icon overcast =
      Icon(Icons.cloud_queue, size: 80, color: Colors.blueGrey);

  static const Icon lightRain =
      Icon(Icons.grain, size: 80, color: Colors.lightBlueAccent);

  static const Icon rain =
      Icon(Icons.beach_access, size: 80, color: Colors.blue);

  static const Icon heavyRain =
      Icon(Icons.grain, size: 80, color: Colors.blueAccent);

  static const Icon showers =
      Icon(Icons.opacity, size: 80, color: Colors.blueGrey);

  static const Icon wetSnow =
      Icon(Icons.ac_unit, size: 80, color: Colors.lightBlueAccent);

  static const Icon lightSnow =
      Icon(Icons.ac_unit, size: 80, color: Colors.white70);

  static const Icon snow = Icon(Icons.ac_unit, size: 80, color: Colors.white);

  static const Icon snowShowers =
      Icon(Icons.ac_unit, size: 80, color: Colors.grey);

  static const Icon hail = Icon(Icons.ac_unit, size: 80, color: Colors.grey);

  static const Icon thunderstorm =
      Icon(Icons.flash_on, size: 80, color: Colors.orange);

  static const Icon thunderstormWithRain =
      Icon(Icons.flash_on, size: 80, color: Colors.red);

  static const Icon thunderstormWithHail =
      Icon(Icons.flash_on, size: 80, color: Colors.deepOrange);
}
