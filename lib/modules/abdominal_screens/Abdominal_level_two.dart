import 'package:easy_localization/easy_localization.dart';
import 'package:fitness/shared/componants/widgets/my_app_bar.dart';
import 'package:fitness/shared/componants/assets_manager.dart';
import 'package:fitness/shared/componants/color_manager.dart';
import 'package:fitness/shared/componants/strings_manager.dart';
import 'package:flutter/material.dart';

class AbdominalLevelTwo extends StatelessWidget {
  const AbdominalLevelTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:ColorManager.grey300,
        body: CustomScrollView(slivers: <Widget>[
          SliverAppBar(
            automaticallyImplyLeading: false,
            backgroundColor: ColorManager.grey300,
            actions:  [
              Padding(
                padding: EdgeInsets.only(right: 80),
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
            centerTitle: true,
            pinned: true,
            expandedHeight: 210.0,
            flexibleSpace: const FlexibleSpaceBar(
              background: MyAppBar('assets/images/abdominal muscles.jpg',),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate(<Widget>[
                buildPage(
                    AppStrings.title1,
                    AppStrings.subtitle,
                    Image.asset(
                      ImageAssets.exercise12,
                      scale: 10,
                    )),
                buildPage(
                    AppStrings.title1,
                    AppStrings.subtitle,
                    Image.asset(
                      ImageAssets.exercise13,
                      scale: 10,
                    )),
                buildPage(
                    AppStrings.title1,
                    AppStrings.subtitle,
                    Image.asset(
                      ImageAssets.exercise14,
                      scale: 10,
                    )),
                buildPage(
                    AppStrings.title1,
                    AppStrings.subtitle,
                    Image.asset(
                      ImageAssets.exercise18,
                      scale: 10,
                    )),
                buildPage(
                    AppStrings.title1,
                    AppStrings.subtitle,
                    Image.asset(
                      ImageAssets.exercise19,
                      scale: 10,
                    )),


                buildPage(
                    AppStrings.title1,
                    AppStrings.subtitle,
                    Image.asset(
                      ImageAssets.exercise16,
                      scale: 6,
                    )),
                buildPage(
                    AppStrings.title1,
                    AppStrings.subtitle,
                    Image.asset(
                      ImageAssets.exercise17,
                      scale: 6,
                    )),
                buildPage(
                    AppStrings.title1,
                    AppStrings.subtitle,
                    Image.asset(
                      ImageAssets.exercise21,
                      scale: 7,
                    )),
                buildPage(
                    AppStrings.title1,
                    AppStrings.subtitle,
                    Image.asset(
                      ImageAssets.exercise20,
                      scale: 10,
                    )),
                buildPage(
                    AppStrings.title1,
                    AppStrings.subtitle,
                    Image.asset(
                      ImageAssets.exercise7,
                      scale: 10,
                    )),
                buildPage(
                    AppStrings.title1,
                    AppStrings.subtitle,
                    Image.asset(
                      ImageAssets.exercise15,
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
              color:ColorManager.grey300,
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
                        style:  TextStyle(
                            color: ColorManager.black,
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(subtitle.tr(),
                          style:  TextStyle(
                              color: ColorManager.black45, fontSize: 8)),
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
