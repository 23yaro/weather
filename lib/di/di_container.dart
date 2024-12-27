import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:weather/data/api/location_api/location_api_impl.dart';
import 'package:weather/data/api/permission_api/permission_api_impl.dart';
import 'package:weather/data/api/weather_api/weather_api_impl.dart';
import 'package:weather/data/data.dart';
import 'package:weather/domain/usecase/weather_usecase.dart';

void setupGetIt() {
  final locationApi = LocationApiImpl();

  final permissionApi = PermissionApiImpl();

  final weatherApi = WeatherApiImpl();

  final weatherRepository = WeatherRepositoryImpl(
    locationService: locationApi,
    permissionService: permissionApi,
    weatherService: weatherApi,
  );

  final logger = Logger();

  GetIt.I.registerFactory<WeatherUseCase>(
    () => WeatherUseCase(
      weatherRepository: weatherRepository,
      logger: logger,
    ),
  );
}
