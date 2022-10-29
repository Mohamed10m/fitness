import 'package:fitness/shared/componants/strings_manager.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final String image;

  final double appBarHeight = 66.0;

    const MyAppBar(this.image, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;

    return Container(
      padding: EdgeInsets.only(top: statusBarHeight),
      height: statusBarHeight + appBarHeight,
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[

              Padding(
                padding: const EdgeInsets.only(bottom: 8.0, right: 8.0),
                child: Row(
                  children: const <Widget>[
                    SizedBox(
                      width: 10,
                    ),
                    Text(AppStrings.numberOfExercises,
                      style: TextStyle(
                          color: Colors.white,
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
                          ]
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),

      ),

      decoration:  BoxDecoration(
        image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.fill),
      ),
    );
  }
}
