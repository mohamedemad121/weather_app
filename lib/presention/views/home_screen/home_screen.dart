import 'package:flutter/material.dart';
import 'package:weather_app/constant/fonts_manager.dart';
import 'package:weather_app/data/models/weather_model.dart';
import 'package:weather_app/presention/views/home_screen/widgets/container_details.dart';
import 'package:weather_app/presention/views/home_screen/widgets/list_view_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.weatherModel});
  final WeatherModel weatherModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ContainerDetails(weatherModel: weatherModel),

        SizedBox(height: 125),
        Padding(
          padding: const EdgeInsets.only(left: 35),
          child: Text(
            'The next two days in mansoura',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontFamily: Fonts.kOrbitron,
            ),
          ),
        ),
        SizedBox(height: 30),
        ListViewItem(
          forecastday:
              weatherModel.forecast?.forecastday?.skip(1).take(2).toList() ??
              [],
              weatherModel: weatherModel,
        ),
      ],
    );
  }
}
