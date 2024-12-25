import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/domain/view_model/home_vm.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<HomeVM>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather'),
        centerTitle: true,
      ),
      body: Center(
        child: vm.weather == null
            ? ElevatedButton(
                onPressed: vm.getWeather,
                child: const Text('Узнать погоду!'),
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Icon(
                        vm.weather?.getConditionIcon(),
                        size: 80,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        vm.weather!.getWeatherCondition()!,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        '${vm.weather!.temp.toString()}°C',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Ощущается как: ${vm.weather!.temp.toString()}°C',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[700],
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Ветер: ${vm.weather!.windSpeed} км/ч',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[700],
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Влажность: ${vm.weather!.humidity}%',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[700],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 50),
                  ElevatedButton(
                    onPressed: vm.getWeather,
                    child: const Text('Узнать погоду!'),
                  ),
                ],
              ),
      ),
    );
  }
}
