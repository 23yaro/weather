import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/domain/domain.dart';
import 'package:weather/presentation/weather_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<HomeVM>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Погода'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (vm.weather != null) WeatherWidget(weather: vm.weather!),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: () async => vm.getWeather(context),
              child: const Text('Узнать погоду!'),
            ),
          ],
        ),
      ),
    );
  }
}
