import 'package:flutter/material.dart';
import 'package:weather_app/constant/go_router.dart';

void main() {
  runApp(WeatherAPP());
}

class WeatherAPP extends StatelessWidget {
  const WeatherAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      
    );
    
  }
}
