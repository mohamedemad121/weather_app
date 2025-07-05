// import 'package:weather_app/data/web_service/web_service.dart';

// class WeatherRepo {
//   final WebService webService;

//   WeatherRepo({required this.webService});
//   Future<Map<String, dynamic>> getWeatherData(String cityName) async {
//     final data = await webService.getWeatherData(cityName: '');
//     final todaydata = data['current'];
//     final forecast = List<Map<String, dynamic>>.from(
//       data['forecast']['forecastday'],
//     );

//     return {'current': todaydata, 'forecast': forecast};
//   }
// }
