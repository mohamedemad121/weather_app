import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/busienes_logic/cubit/getweather_cubit.dart';
import 'package:weather_app/constant/image_manager.dart';
import 'package:weather_app/data/web_service/web_service.dart';
import 'package:weather_app/presention/views/home_screen/home_screen.dart';
import 'package:weather_app/presention/views/search_empty/search_empty.dart';
import 'package:weather_app/presention/views/search_view/widgets/custom_textfield.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetweatherCubit(WebService(dio: Dio())),
      child: Scaffold(
        body: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ImageManager.kBackGroundImage),
                fit: BoxFit.cover,
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Builder(
                    builder:
                        (context) => CustomTextfield(
                          onSubmitted: (value) {
                            BlocProvider.of<GetweatherCubit>(
                              context,
                            ).weatherCubit(cityName: value);
                          },
                        ),
                  ),
                  SizedBox(height: 24),
                  BlocBuilder<GetweatherCubit, GetweatherState>(
                    builder: (context, state) {
                      if (state is GetweatherLoading){
                        return CircleProgresIndicator();
                      }
                      else if (state is GetweatherSuccess) {
                        return HomeScreen(weatherModel: state.weatherData,);
                      } else {
                        return SearchEmpty();
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
class CircleProgresIndicator extends StatelessWidget {
  const CircleProgresIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: CircularProgressIndicator());
     
    
  }
}