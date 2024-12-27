import 'package:geolocator/geolocator.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:weather/data/api/location_api/location_api.dart';
import 'package:weather/data/api/permission_api/permission_api.dart';
import 'package:weather/data/api/weather_api/weather_api.dart';
import 'package:weather/data/data.dart';
import 'package:weather/domain/usecase/weather_usecase.dart';

void setupGetIt() {
  final geolocator = Geolocator();

  final locationService = LocationApi(geolocator: geolocator);

  final permissionService = PermissionApi(geolocator: geolocator);

  final weatherService = WeatherApi();

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
