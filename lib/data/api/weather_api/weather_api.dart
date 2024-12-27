import 'package:dio/dio.dart';
import 'package:weather/data/api/weather_api/i_weather_api.dart';
import 'package:weather/data/model/weather_dto/weather_dto.dart';

class WeatherApi implements IWeatherApi {
  static const apiUrl = 'https://api.weather.yandex.ru/v2/forecast';
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
      apiUrl,
      queryParameters: {
        'lat': latitude,
        'lon': longitude,
        'lang': language,
      },
    );
    return WeatherDTO.fromJson((response.data as Map<String, dynamic>)['fact']);
  }
}
