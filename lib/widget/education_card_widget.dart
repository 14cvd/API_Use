import 'package:flutter/material.dart';

import 'icon_widget.dart';

class EducationCard extends StatelessWidget {
  const EducationCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: ListTile(
        trailing: IconWidget(icons: Icons.cast_for_education_outlined),
        title: Text("Education"),
        subtitle: Column(
          children: <Widget>[
            SizedBox(height: 6),
            Row(
              children: [Text("Bachelor Degree")],
            ),
            SizedBox(height: 6),
            Row(
              children: [Text("NATİONAL AVİATİON ACADEMY (2019 - 2023)")],
            ),
          ],
        ),
      ),
    );
  }
}
