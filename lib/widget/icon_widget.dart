import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({super.key, required this.icons});
  final IconData icons;
  @override
  Widget build(BuildContext context) {
    return Icon(
      icons,
      color: Colors.black,
    );
  }
}
