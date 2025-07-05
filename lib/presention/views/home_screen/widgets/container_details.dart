import 'package:flutter/material.dart';
import 'package:weather_app/constant/color_manager.dart';
import 'package:weather_app/constant/fonts_manager.dart';
import 'package:weather_app/data/models/weather_model.dart';

class ContainerDetails extends StatelessWidget {
  const ContainerDetails({super.key, required this.weatherModel});
  final WeatherModel weatherModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.1),

          borderRadius: BorderRadius.circular(24),
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 15, right: 5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(
                    'Today',
                    style: TextStyle(
                      color: Color(ColorManager.kTextColor),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Text(
                    '${weatherModel.location?.localtime}',
                    style: TextStyle(
                      color: Color(ColorManager.kTextColor),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      fontFamily: Fonts.kOrbitron,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 80),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Text(
                    '${weatherModel.current?.tempC}',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: Fonts.kOrbitron,
                    ),
                  ),
                  Spacer(),
                  Image.network(
                    "https:${weatherModel.current?.condition?.icon}",
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                '${weatherModel.current?.condition?.text}',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.5),
                  fontSize: 12,
                  fontFamily: Fonts.kOrbitron,
                ),
              ),
            ),
            SizedBox(height: 40),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 12, left: 12),
                  child: Icon(
                    Icons.location_on,
                    size: 32,
                    color: Colors.yellow,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 2, bottom: 12),
                    child: Text(
                      '${weatherModel.location?.region}',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: Fonts.kOrbitron,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
