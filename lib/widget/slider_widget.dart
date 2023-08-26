import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomSliderWidget extends StatefulWidget {
  CustomSliderWidget({super.key, required this.name, required this.value});
  String name;
  double value;

  @override
  State<CustomSliderWidget> createState() => _CustomSliderWidgetState();
}

class _CustomSliderWidgetState extends State<CustomSliderWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(widget.name),
        Slider(
          value: widget.value,
          max: 100,
          activeColor: Colors.amber,
          onChanged: (double value) {},
        ),
      ],
    );
  }
}
