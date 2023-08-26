import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:news_app/screen/crypto_screen.dart';
import 'package:news_app/screen/home_screen.dart';
import 'package:news_app/screen/me_screen.dart';
import 'package:news_app/screen/weather_screen.dart';

import 'icon_widget.dart';

class BottomNavigatorWidget extends StatefulWidget {
  const BottomNavigatorWidget({super.key});

  @override
  State<BottomNavigatorWidget> createState() => _BottomNavigatorWidgetState();
}

class _BottomNavigatorWidgetState extends State<BottomNavigatorWidget> {
  final int _curretIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: IconWidget(icons: FontAwesomeIcons.house),
          label: "",
          backgroundColor: Colors.amber,
        ),
        BottomNavigationBarItem(
          icon: IconWidget(icons: FontAwesomeIcons.bitcoin),
          label: "",
          backgroundColor: Colors.amber,
        ),
        BottomNavigationBarItem(
          icon: IconWidget(icons: FontAwesomeIcons.cloud),
          label: "",
          backgroundColor: Colors.amber,
        ),
        BottomNavigationBarItem(
          icon: IconWidget(icons: FontAwesomeIcons.user),
          label: "",
          backgroundColor: Colors.amber,
        ),
      ],
      type: BottomNavigationBarType.shifting,
      currentIndex: _curretIndex,
      onTap: (value) {
        switch (value) {
          case 0:
            Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => const HomeScreen(),
                ));

          case 1:
            Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => const CryoptoScreen(),
                ));
          case 2:
            Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => const WeatherScreen(),
                ));
          case 3:
            Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => const MeScreen(),
                ));
        }
      },
    );
  }
}
