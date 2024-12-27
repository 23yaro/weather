import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:weather/di/di_container.dart';
import 'package:weather/domain/domain.dart';
import 'package:weather/domain/usecase/weather_usecase.dart';
import 'package:weather/presentation/home_view.dart';

Future<void> main() async {
  setupGetIt();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final weatherUseCase = GetIt.instance<WeatherUseCase>();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ChangeNotifierProvider<HomeVM>(
        create: (_) => HomeVM(weatherUseCase: weatherUseCase),
        child: const HomeView(),
      ),
    );
  }
}
