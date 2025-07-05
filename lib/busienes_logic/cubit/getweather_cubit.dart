import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:weather_app/data/models/weather_model.dart';
import 'package:weather_app/data/web_service/web_service.dart';

part 'getweather_state.dart';

class GetweatherCubit extends Cubit<GetweatherState> {
  GetweatherCubit(this.webService) : super(GetweatherInitial());
  final WebService webService;
  Future<void> weatherCubit({required String cityName}) async {
    emit(GetweatherLoading());
    try {
      final weatherData = await webService.getWeatherData(cityName: cityName);

      emit(GetweatherSuccess(weatherData: weatherData));
    } on DioException catch (e) {
      emit(GetweatherFailure(error: '$e'));
    }
  }
}
