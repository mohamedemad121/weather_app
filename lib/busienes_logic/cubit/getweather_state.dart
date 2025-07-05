part of 'getweather_cubit.dart';


abstract class GetweatherState {}


final class GetweatherInitial extends GetweatherState {}
final class GetweatherLoading extends GetweatherState {}
final class GetweatherSuccess extends GetweatherState {
final WeatherModel weatherData;

  GetweatherSuccess({required this.weatherData}); 

}
final class GetweatherFailure extends GetweatherState {
  final String error;

  GetweatherFailure({required this.error});
}
