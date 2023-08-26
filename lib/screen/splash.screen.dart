import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:news_app/screen/home_screen.dart';

class SplashWidget extends StatelessWidget {
  const SplashWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        duration: 3000,
        splashIconSize: 100,
        splash: Expanded(
          child: SizedBox(
            width: 200,
            child: Image.asset(
              "assets/png/splash_image.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
        nextScreen: const HomeScreen(),
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: Colors.white);
  }
}
