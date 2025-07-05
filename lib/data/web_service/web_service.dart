import 'package:dio/dio.dart';
import 'package:weather_app/data/models/weather_model.dart';

class WebService {
  final Dio dio;
  final baseUrl = 'http://api.weatherapi.com/v1/';
  final apiKey = '37826a62e2c34bb29ab163125250302';

  WebService({required this.dio});
  Future<WeatherModel> getWeatherData({required String cityName}) async {
    final response = await dio.get(
      '$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=3',
    );

    WeatherModel weatherModel = WeatherModel.fromJson(response.data);
    return weatherModel;
  }
}
