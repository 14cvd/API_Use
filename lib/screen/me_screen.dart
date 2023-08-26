import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:news_app/widget/bottom_widget.dart';
import 'package:news_app/widget/chip_widget.dart';
import 'package:news_app/widget/icon_widget.dart';

import '../helpers/constant/const_social_media.dart';
import '../helpers/launcUrl.dart';
import '../widget/divider_widget.dart';
import '../widget/education_card_widget.dart';
import '../widget/hobby_card_widget.dart';
import '../widget/language_card_widget.dart';
import '../widget/main_listtile_widget.dart';
import '../widget/skills_card_widget.dart';

class MeScreen extends StatefulWidget {
  const MeScreen({super.key});

  @override
  State<MeScreen> createState() => _MeScreenState();
}

class _MeScreenState extends State<MeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: const Text(
          "About Me",
        ),
        actions: [
          IconButton(
              onPressed: () {
                socialMedia();
              },
              icon: Image.asset("assets/png/contact.png")),
          IconButton(
            icon: const IconWidget(icons: FontAwesomeIcons.info),
            onPressed: () {
              aboutMeInfo();
            },
          )
        ],
      ),
      body: ListView(
        children: const [
          MainListile(),
          DividerWidget(),
          SkillsCard(),
          LanguageCard(),
          EducationCard(),
          HobbyCard()
        ],
      ),
      bottomNavigationBar: const BottomNavigatorWidget(),
    );
  }

  // ignore: non_constant_identifier_names
  Future<void> aboutMeInfo() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("About Me Info"),
          content: const SingleChildScrollView(
            child: Text(
                "First of all, I am a greedy person for every useful things. Technology is irreplaceable for me, for this reason, I have studied Computer Engineering for 4 years and experienced crucial programming and computer technologies. I have some knowledge in different directions – Frontend and Backend development, Databases, Design, Operation Systems,Mobile, Computer Hardware etc.Additionaly, I have soft skills apart from technical skills such as responsibility, communication, teamwork, easily adaptable, analytical thinking, critical thinking, problem solving and something like that.\nFinally, I love researching , self-studying, and even sleepless nights which support me to grow like high-demanding engineer in technological era. I do not like pushy people. If you are nice, I will go out of my way to help you. I like to treat people with respect. I enjoy helping people and I love to learn about new technologies... Story of my life :)"),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text("Seen"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> socialMedia() async {
    return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Social Media"),
          content: SingleChildScrollView(
            child: Wrap(children: <Widget>[
              TextButton(
                  onPressed: () {
                    LaunchUrl.launcher(SocialMediaLink.linkedin);
                  },
                  child: ChipWidget(
                      hobyName: "Linkedin",
                      icons: FontAwesomeIcons.linkedinIn)),
              TextButton(
                  onPressed: () {
                    LaunchUrl.launcher(SocialMediaLink.instagram);
                  },
                  child: ChipWidget(
                      hobyName: "Instagram",
                      icons: FontAwesomeIcons.instagram)),
              TextButton(
                  onPressed: () {
                    LaunchUrl.launcher(SocialMediaLink.gitHub);
                  },
                  child: ChipWidget(
                      hobyName: "GitHub", icons: FontAwesomeIcons.github)),
              TextButton(
                  onPressed: () {
                    LaunchUrl.launcher(SocialMediaLink.gMail);
                  },
                  child: ChipWidget(
                      hobyName: "Gmail", icons: Icons.email_outlined)),
            ]),
          ),
          actions: <Widget>[
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Ok"))
          ],
        );
      },
    );
  }
}
