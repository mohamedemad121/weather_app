import 'package:flutter/material.dart';
import 'package:weather_app/constant/fonts_manager.dart';
import 'package:weather_app/constant/image_manager.dart';

class SearchEmpty extends StatelessWidget {
  const SearchEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(ImageManager.kBackGroundImage),
        Text(
          'Start Search For City ',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontFamily: Fonts.kOrbitron,
          ),
        ),
      ],
    );
  }
}
