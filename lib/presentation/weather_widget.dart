import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather/domain/domain.dart';

class WeatherWidget extends StatelessWidget {
  const WeatherWidget({
    required this.weather,
    super.key,
  });

  final Weather weather;

  String formatDateTime(DateTime dateTime) {
    final formattedDate = DateFormat('dd.MM').format(dateTime);
    final formattedTime = DateFormat('HH:mm').format(dateTime);

    return 'дата: $formattedDate время: $formattedTime';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        weather.conditionIcon,
        const SizedBox(height: 10),
        Text(
          weather.condition,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          formatDateTime(weather.date),
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey[700],
          ),
        ),
        const SizedBox(height: 10),
        Text(
          '${weather.temp.toString()}°C',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          'Ощущается как: ${weather.temp.toString()}°C',
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey[700],
          ),
        ),
        const SizedBox(height: 5),
        Text(
          'Ветер: ${weather.windSpeed} км/ч',
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey[700],
          ),
        ),
        const SizedBox(height: 5),
        Text(
          'Влажность: ${weather.humidity}%',
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey[700],
          ),
        ),
      ],
    );
  }
}
