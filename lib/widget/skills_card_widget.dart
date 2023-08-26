import 'package:flutter/material.dart';
import 'package:news_app/widget/slider_widget.dart';

class SkillsCard extends StatelessWidget {
  const SkillsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: const Text("SKİLLS"),
        subtitle: Column(
          children: [
            CustomSliderWidget(
              name: "Linux",
              value: 50,
            ),
            CustomSliderWidget(
              name: "Python",
              value: 70,
            ),
            CustomSliderWidget(
              name: "SQL",
              value: 60,
            ),
            CustomSliderWidget(
              name: "GetX",
              value: 40,
            ),
            CustomSliderWidget(
              name: "Riverpod",
              value: 30,
            ),
            CustomSliderWidget(
              name: "Django",
              value: 40,
            ),
            CustomSliderWidget(
              name: "API",
              value: 50,
            ),
          ],
        ),
      ),
    );
  }
}
