import 'package:easy_localization/easy_localization.dart';
import 'package:fitness/shared/componants/widgets/my_app_bar.dart';
import 'package:fitness/shared/componants/assets_manager.dart';
import 'package:fitness/shared/componants/strings_manager.dart';
import 'package:flutter/material.dart';

class AbdominalLevelOne extends StatelessWidget {
  const AbdominalLevelOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: CustomScrollView(slivers: <Widget>[
          SliverAppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.grey[300],
            actions:   [
              Padding(
                padding: const EdgeInsets.only(right: 80.0),
                child: Text(
                  AppStrings.abdominal_exercises.tr(),
                  style: const TextStyle(
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
            pinned: true,
            expandedHeight: 180.0,
            flexibleSpace:  const FlexibleSpaceBar(
              background: MyAppBar('assets/images/abdominal muscles.jpg',),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate(<Widget>[
                buildPage(
                    AppStrings.title1,
                    AppStrings.subtitle,
                    Image.asset(
                      ImageAssets.exercise1,
                      scale: 10,
                    )),
                buildPage(
                    AppStrings.title1,
                    AppStrings.subtitle,
                    Image.asset(
                      ImageAssets.exercise2,
                      scale: 10,
                    )),
                buildPage(
                    AppStrings.title1,
                    AppStrings.subtitle,
                    Image.asset(
                      ImageAssets.exercise3,
                      scale: 10,
                    )),
                buildPage(
                    AppStrings.title1,
                    AppStrings.subtitle,
                    Image.asset(
                      ImageAssets.exercise4,
                      scale: 10,
                    )),
                buildPage(
                    AppStrings.title1,
                    AppStrings.subtitle,
                    Image.asset(
                      ImageAssets.exercise5,
                      scale: 10,
                    )),
                buildPage(
                    AppStrings.title1,
                    AppStrings.subtitle,
                    Image.asset(
                      ImageAssets.exercise6,
                      scale: 10,
                    )),
                buildPage(
                    AppStrings.title1,
                    AppStrings.subtitle,
                    Image.asset(
                      ImageAssets.exercise8,
                      scale: 10,
                    )),
                buildPage(
                    AppStrings.title1,
                    AppStrings.subtitle,
                    Image.asset(
                      ImageAssets.exercise9,
                      scale: 10,
                    )),
                buildPage(
                    AppStrings.title1,
                    AppStrings.subtitle,
                    Image.asset(
                      ImageAssets.exercise10,
                      scale: 10,
                    )),
                buildPage(
                    AppStrings.title1,
                    AppStrings.subtitle,
                    Image.asset(
                      ImageAssets.exercise11,
                      scale: 10,
                    )),
                buildPage(
                    AppStrings.title1,
                    AppStrings.subtitle,
                    Image.asset(
                      ImageAssets.blank,
                      scale: 10,
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
                        title.tr(),
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(subtitle.tr(),
                          style: const TextStyle(
                              color: Colors.black45, fontSize: 8)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ClipRRect(
                    // clipBehavior: Clip.antiAlias,
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
