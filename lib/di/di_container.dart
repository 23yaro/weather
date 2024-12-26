import 'package:geolocator/geolocator.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:weather/data/api/service/location_service/location_service.dart';
import 'package:weather/data/api/service/permission_service/permission_service.dart';
import 'package:weather/data/api/service/weather_service/weather_service.dart';
import 'package:weather/data/data.dart';
import 'package:weather/domain/usecase/weather_usecase.dart';

void setupGetIt() {
  final geolocator = Geolocator();

  final locationService = LocationService(geolocator: geolocator);

  final permissionService = PermissionService(geolocator: geolocator);

  final weatherService = WeatherService();

  final weatherRepository = WeatherRepository(
    locationService: locationService,
    permissionService: permissionService,
    weatherService: weatherService,
  );

  final logger = Logger();

  GetIt.I.registerFactory<WeatherUseCase>(
    () => WeatherUseCase(
      weatherRepository: weatherRepository,
      logger: logger,
    ),
  );
}
