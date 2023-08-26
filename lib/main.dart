import 'package:flutter/material.dart';
import 'package:news_app/helpers/constant/constant_theme.dart';
import 'package:news_app/screen/splash.screen.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeDataLight.themeDataLight,
      debugShowCheckedModeBanner: false,
      home: const SplashWidget(),
    );
  }
}
