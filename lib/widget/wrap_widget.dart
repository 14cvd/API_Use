import 'package:flutter/material.dart';

import 'chip_widget.dart';

class WrapWidget extends StatelessWidget {
  const WrapWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      // gap between lines
      children: <Widget>[
        ChipWidget(hobyName: "Read The Book", icons: Icons.book_outlined),
        ChipWidget(
            hobyName: "Listen To Music", icons: Icons.music_note_outlined),
        ChipWidget(hobyName: "Travel", icons: Icons.travel_explore_outlined),
        ChipWidget(hobyName: "Watch To Movie", icons: Icons.camera_outlined),
        ChipWidget(hobyName: "Coding", icons: Icons.code_outlined),
        ChipWidget(hobyName: "Football", icons: Icons.sports_soccer_outlined),
      ],
    );
  }
}
