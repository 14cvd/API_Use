import 'package:flutter/material.dart';

import 'icon_widget.dart';

// ignore: must_be_immutable
class ChipWidget extends StatelessWidget {
  ChipWidget({super.key, required this.hobyName, required this.icons});
  IconData icons;
  String hobyName;

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: Colors.amber,
      avatar: CircleAvatar(
        radius: 40,
        child: SizedBox(
          child: IconWidget(
            icons: icons,
          ),
        ),
      ),
      label: SizedBox(
        height: 30,
        child: Center(child: Text(hobyName)),
      ),
    );
  }
}
