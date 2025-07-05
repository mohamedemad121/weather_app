import 'package:flutter/material.dart';
import 'package:weather_app/constant/color_manager.dart';
import 'package:weather_app/constant/fonts_manager.dart';
import 'package:weather_app/data/models/weather_model.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({
    super.key,
    required this.forecastday,
    required this.weatherModel,
  });
  final List<Forecastday> forecastday;
  final WeatherModel weatherModel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 445,
      child: ListView.builder(
        shrinkWrap: true,

        scrollDirection: Axis.horizontal,

        itemCount: forecastday.length,
        itemBuilder: (context, index) {
          final forecast = forecastday[index];

          return Padding(
            padding: const EdgeInsets.only(
              left: 50,
              right: 1,
              top: 20,
              bottom: 145,
            ),
            child: Container(
              height: 100,
              width: 345,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),

                borderRadius: BorderRadius.circular(24),
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                      left: 15,
                      right: 10,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text(
                          'Date',
                          style: TextStyle(
                            color: Color(ColorManager.kTextColor),
                            fontSize: 18,
                            fontFamily: Fonts.kOrbitron,
                          ),
                        ),
                        Spacer(),
                        Text(
                          forecast.date ?? '',
                          style: TextStyle(
                            color: Color(ColorManager.kTextColor),
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            fontFamily: Fonts.kOrbitron,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 60),
                  Padding(
                    padding: const EdgeInsets.only(left: 15 , right: 15),
                    child: Row(
                      children: [
                        Text(
                          '${forecast.day?.maxtempC ?? ''}',
                                            
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: Fonts.kOrbitron,
                          ),
                        ),
                        Spacer(),
                        SizedBox(
                          height: 50,
                          width: 50,
                          child: Image.network(
                            '${forecast.day?.condition?.icon}',
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      '${forecast.day?.mintempC ?? ''}',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: Fonts.kOrbitron,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      '${forecast.day?.condition?.text}',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                        fontSize: 12,
                        fontFamily: Fonts.kOrbitron,
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  Padding(
                   padding: const EdgeInsets.only(bottom: 12, left: 8, ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 32,
                          color: Colors.yellow,
                        ),
                        Text(
                          '${weatherModel.location?.region}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: Fonts.kOrbitron,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
