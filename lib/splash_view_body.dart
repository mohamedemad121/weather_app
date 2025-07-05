import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_app/constant/image_manager.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  double opacityLevel = 1.0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(Duration(seconds: 1));
      setState(() {
        opacityLevel = 0.0;
      });
    });
  }

  void onAnimationEnd() {
    if (opacityLevel == 0.0) {
      context.go('/SearchView');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: AnimatedOpacity(
          opacity: opacityLevel,
          duration: const Duration(seconds: 3),
          onEnd: onAnimationEnd,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ImageManager.kSplashViewImage),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
