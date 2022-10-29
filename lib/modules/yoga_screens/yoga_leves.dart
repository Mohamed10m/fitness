import 'package:easy_localization/easy_localization.dart';
import 'package:fitness/modules/yoga_screens/yoga_level_one.dart';
import 'package:fitness/shared/componants/strings_manager.dart';
import 'package:flutter/material.dart';

import 'yoga_level_three.dart';
import 'yoga_level_two.dart';

class YogaLevels extends StatelessWidget {
  const YogaLevels({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: ListView(scrollDirection: Axis.vertical, children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Yoga Exercises",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(1.0, 1.0),
                          blurRadius: 0.5,
                          color: Color(0x802196F3),
                        ),
                        Shadow(
                          offset: Offset(1.3, 1.3),
                          blurRadius: 1.0,
                          color: Color(0x802196F3),
                        ),
                      ]),
                ),
              ],
            ),
          ),
          InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const YogaLevelOne()));
              },
              child: buildPage(AppStrings.level_one.tr())),
          InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const YogaLevelTwo()));
              },
              child: buildPage(AppStrings.level_two.tr())),
          InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const YogaLevelThree()));
              },
              child: buildPage(AppStrings.level_three.tr())),
        ]));
  }
}

Widget buildPage(String title) => Padding(
      padding: const EdgeInsets.all(16.0),
      child: Material(
        elevation: 14.0,
        borderRadius: BorderRadius.circular(10.0),
        clipBehavior: Clip.antiAlias,
        shadowColor: const Color(0x802196F3),
        child: Container(
          height: 120,
          decoration: BoxDecoration(
            color: Colors.grey[300],
          ),
          child: Center(
            child: Text(
              title,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
