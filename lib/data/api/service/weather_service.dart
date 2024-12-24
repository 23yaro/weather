import 'package:dio/dio.dart';
import 'package:weather/data/api/model/weather_dto.dart';
import 'package:weather/data/api/service/i_weather_service.dart';

class WeatherService implements IWeatherService {
  static const url = 'https://api.weather.yandex.ru/v2/forecast';
  static const accessKey = String.fromEnvironment('access_key');
  static const language = 'ru_RU';

  final Dio _dio = Dio(
    BaseOptions(headers: {'X-Yandex-Weather-Key': accessKey}),
  );

  @override
  Future<WeatherDTO> getWeather({
    required double latitude,
    required double longitude,
  }) async {
    final response = await _dio.get(
      '$url?lat=$latitude&lon=$longitude&$language',
    );
    return WeatherDTO.fromJson((response.data as Map<String, dynamic>)['fact']);
  }
}
