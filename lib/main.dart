import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:provider/provider.dart';
import 'package:weather/data/api/service/location_service/location_service.dart';
import 'package:weather/data/api/service/permission_service/permission_service.dart';
import 'package:weather/data/api/service/weather_service/weather_service.dart';
import 'package:weather/data/repository/weather_repository.dart';
import 'package:weather/domain/usecase/weather_usecase.dart';
import 'package:weather/domain/view_model/home_vm.dart';
import 'package:weather/presentation/home_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final WeatherUseCase weatherUseCase;

  @override
  void initState() {
    weatherUseCase = WeatherUseCase(
      weatherRepository: WeatherRepository(
        locationService: LocationService(geolocator: Geolocator()),
        permissionService: PermissionService(geolocator: Geolocator()),
        weatherService: WeatherService(),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
