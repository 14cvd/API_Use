import 'package:flutter/material.dart';
import 'package:news_app/widget/slider_widget.dart';

class LanguageCard extends StatelessWidget {
  const LanguageCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: const Text("LANGUAGES"),
        subtitle: Column(
          children: <Widget>[
            CustomSliderWidget(name: "Azerbaijan", value: 100),
            CustomSliderWidget(name: "English", value: 50),
            CustomSliderWidget(name: "Russian", value: 40),
            CustomSliderWidget(name: "Turkey", value: 100),
          ],
        ),
      ),
    );
  }
}
