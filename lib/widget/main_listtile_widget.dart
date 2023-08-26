
import 'package:flutter/material.dart';

class MainListile extends StatelessWidget {
  const MainListile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading: CircleAvatar(
          radius: 40, foregroundImage: AssetImage("assets/png/cavid.png")),
      title: Text("Cavid Abbaseliyev"),
      subtitle: Text("Flutter Developer"),
    );
  }
}
