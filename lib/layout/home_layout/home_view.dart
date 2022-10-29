import 'package:easy_localization/easy_localization.dart';
import 'package:fitness/modules/yoga_screens/yoga_leves.dart';
import 'package:fitness/main.dart';
import 'package:fitness/modules/cardio_screens/cardio_levels.dart';
import 'package:fitness/modules/drawer/Drawer_view.dart';
import 'package:fitness/modules/advice_screen/advice_screen.dart';
import 'package:fitness/modules/abdominal_screens/AbdominalLevels.dart';
import 'package:fitness/modules/tasks_screens/task_view.dart';
import 'package:fitness/shared/componants/color_manager.dart';
import 'package:fitness/shared/componants/strings_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/home_cubit.dart';
import 'cubit/home_states.dart';
import '../../modules/tasks_screens/add_tasks.dart';

class SimpleAppBarPage extends StatefulWidget {
  const SimpleAppBarPage({Key? key}) : super(key: key);

  @override
  _SimpleAppBarPageState createState() => _SimpleAppBarPageState();
}

class _SimpleAppBarPageState extends State<SimpleAppBarPage> {
  @override
  Widget build(BuildContext context) =>
      BlocProvider(
          create: (BuildContext context) =>
          AppCubit()..getUserData()
          ,
          child: BlocConsumer<AppCubit, AppStates>(
            listener: (context, state) {},
            builder: (context, state) {
              final GlobalKey<ScaffoldState> scaffoldKey =
              GlobalKey<ScaffoldState>();

              return DefaultTabController(
                  length: 4,
                  child: Scaffold(
                      key: scaffoldKey,

                      endDrawer: const SafeArea(child: DrawerView()),
                      appBar: AppBar(
                        title: Row(
                          children: [
                            Text(
                              MyApp.title,
                              style: TextStyle(
                                  color: ColorManager.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                  shadows: const <Shadow>[
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
                        flexibleSpace: Container(
                          decoration:
                          BoxDecoration(color: ColorManager.grey300),
                        ),
                        bottom: TabBar(
                          labelColor: Colors.black,
                          labelStyle: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                          indicatorColor: Colors.black,
                          indicatorWeight: 6,
                          tabs: [
                            Tab(
                              icon: Image.asset(
                                'assets/images/2112184.png',
                                scale: 5,
                              ),
                              text: 'Training',
                            ),
                            Tab(
                                icon: Image.asset(
                                  'assets/images/5170054.png',
                                  scale: 5,
                                ),
                                text: 'Tasks'),
                            Tab(
                                icon: Image.asset(
                                  'assets/images/2921226.png',
                                  scale: 5,
                                ),
                                text: 'Add Task'),
                            Tab(
                              icon: Image.asset(
                                'assets/images/5463077.png',
                                scale: 18,
                              ),
                              text: 'Advices',
                            ),
                          ],
                        ),
                        elevation: 20,
                        titleSpacing: 20,
                      ),
                      body: TabBarView(children: [
                        ListView(
                            scrollDirection: Axis.vertical,
                            children: <Widget>[
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                          const AbdominalLevels()));
                                },
                                child: buildPage(
                                    AppStrings.cardio_exercises,

                                    '3 levels',
                                    Image.asset(
                                      'assets/images/abdominal muscles.jpg',
                                      scale: 6,
                                    )),
                              ),
                              InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                            const YogaLevels()));
                                  },
                                  child: buildPage(
                                      AppStrings.cardio_exercises,

                                      '3 levels',
                                      Image.asset(
                                        'assets/images/pexels-natalie-3759660.jpg',
                                        scale: 68,
                                      ))),
                              InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                            const CardioLevels()));
                                  },
                                  child: buildPage(
                                      AppStrings.cardio_exercises,
                                      '3 levels',
                                      Image.asset(
                                        'assets/images/cardio.jpg',
                                        scale: 70,
                                      ))),
                            ]),
                        const TasksView(),
                        const AddTasks(),
                        const AdviceScreen(),
                      ]))

              );
            },
          ));



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
                            // 'Chest Exercises',
                            title.tr(),
                            style: const TextStyle(
                                color: Colors.blue,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          const Text('3 Steps',
                              style: TextStyle(
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
