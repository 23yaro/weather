import 'package:weather/data/api/service/i_weather_service.dart';
import 'package:weather/data/mapper/weather_mapper.dart';
import 'package:weather/domain/model/weather.dart';
import 'package:weather/domain/repository/i_weather_repository.dart';

class WeatherRepository implements IWeatherRepository{
  const WeatherRepository({required this.weatherService});

  final IWeatherService weatherService;
  
  @override
  Future<Weather> getWeather({required double latitude, required double longitude})async {
    return WeatherMapper.fromDTO(await weatherService.getWeather(latitude: latitude, longitude: longitude));
  }

}
