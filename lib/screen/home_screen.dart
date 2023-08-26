import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:news_app/helpers/constant/const_social_media.dart';
import 'package:news_app/helpers/launcUrl.dart';
import 'package:news_app/widget/bottom_widget.dart';
import 'package:news_app/widget/future_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: false,
          title: const Text(
            "NewsApp",
          ),
          actions: [
            IconButton(
              onPressed: () {
                LaunchUrl.launcher(SocialMediaLink.gitHub);
              },
              icon: const Icon(
                FontAwesomeIcons.star,
                //color: Colors.black,
              ),
            )
          ],
        ),
        body: const FutureWidget(),
        bottomNavigationBar: const BottomNavigatorWidget());
  }

  // Future<void> _launcherGithub() async {
  //   if (!await launchUrl(githubLink)) {
  //     throw Exception("Could not url $githubLink");
  //   }
  // }
}
