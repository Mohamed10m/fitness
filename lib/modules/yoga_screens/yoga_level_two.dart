import 'package:fitness/shared/componants/widgets/my_app_bar.dart';
import 'package:fitness/shared/componants/assets_manager.dart';
import 'package:flutter/material.dart';

import '../../shared/componants/strings_manager.dart';

class YogaLevelTwo extends StatelessWidget {
  const YogaLevelTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: CustomScrollView(slivers: <Widget>[
          SliverAppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.grey[300],
            actions:  const [
              Padding(
                padding: EdgeInsets.only(right: 100.0),
                child: Text(
                  AppStrings.yoga_exercises,
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
              )
            ],
            centerTitle: true,
            pinned: true,
            expandedHeight: 210.0,
            flexibleSpace: const FlexibleSpaceBar(
              background: MyAppBar( 'assets/images/pexels-natalie-3759660.jpg',),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate(<Widget>[
                buildPage(
                    'Chest Exercises',
                    '3 Steps',
                    Image.asset(
                      ImageAssets.yoga10,
                      scale: 13,
                    )),
                buildPage(
                    'Chest Exercises',
                    '3 Steps',
                    Image.asset(
                      ImageAssets.yoga11,
                      scale: 13,
                    )),
                buildPage(
                    'Chest Exercises',
                    '3 Steps',
                    Image.asset(
                      ImageAssets.yoga12,
                      scale: 20,
                    )),


              ]))
        ]));
  }

  Widget buildPage(String title, String subtitle, Image image) => Padding(
    padding: const EdgeInsets.all(16.0),
    child: FittedBox(
      child: Material(
          elevation: 14.0,
          borderRadius: BorderRadius.circular(10.0),
          clipBehavior: Clip.antiAlias,
          shadowColor: const Color(0x802196F3),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[300],
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(subtitle,
                          style: const TextStyle(
                              color: Colors.black45, fontSize: 8)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ClipRRect(
                      borderRadius:
                      const BorderRadius.all(Radius.circular(5.0)),
                      child: image),
                ),
              ],
            ),
          )),
    ),
  );
}
