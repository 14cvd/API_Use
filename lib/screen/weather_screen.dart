import 'package:flutter/material.dart';
import 'package:news_app/widget/bottom_widget.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Weather"),
        centerTitle: false,
      ),
      body: const Center(
        child: Text("Coming Soon ..."),
      ),
      bottomNavigationBar: const BottomNavigatorWidget(),
    );
  }
}
