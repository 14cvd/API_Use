import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/widget/wrap_widget.dart';

import 'divider_widget.dart';

class HobbyCard extends StatelessWidget {
  const HobbyCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: <Widget>[
        Column(
          children: [
            Center(
                child: Text(
              "Hobby",
              style: GoogleFonts.abel().copyWith(fontSize: 30),
            )),
            const DividerWidget()
          ],
        ),
        const WrapWidget()
      ],
    ));
  }
}
