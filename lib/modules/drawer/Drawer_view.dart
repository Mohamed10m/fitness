import 'package:easy_localization/easy_localization.dart';
import 'package:fitness/layout/home_layout/cubit/home_cubit.dart';
import 'package:fitness/layout/home_layout/cubit/home_states.dart';
import 'package:fitness/layout/home_layout/home_view.dart';
import 'package:fitness/shared/componants/strings_manager.dart';
import 'package:fitness/shared/network/local/cache_helper.dart';
import 'package:fitness/shared/componants/componants.dart';
import 'package:fitness/shared/network/local/di.dart';
import 'package:fitness/modules/profile_screen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';

import '../../shared/componants/language_manager.dart';

class DrawerView extends StatefulWidget {


   const DrawerView({Key? key}) : super(key: key);

  @override
  State<DrawerView> createState() => _DrawerViewState();
}

class _DrawerViewState extends State<DrawerView> {

  final AppPreferences _appPreferences = instance<AppPreferences>();

  @override
  Widget build(BuildContext context) {

    return BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Drawer(
            backgroundColor: Colors.teal[400],
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 120,
                  padding: const EdgeInsets.all(20),
                  alignment: Alignment.centerLeft,
                  color: Colors.teal,
                  child: Row(
                    children:  [
                      const Icon(Icons.settings, color: Colors.black, size: 30,),
                      const SizedBox(width: 10,),
                      Text(
                        AppStrings.Settings.tr(),
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ListTile(
                  leading: const Icon(

                    Icons.person,
                    size: 26,
                    color: Colors.black,

                  ),
                  title:  Text(
                    AppStrings.Profile.tr(),
                    style: const TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.white),
                  ),
                  onTap: () {
                    navigateTo(context, const ProfileScreen());
                  },
                ),
                ListTile(
                  leading: const Icon(

                    Icons.language_outlined,
                    size: 26,
                    color: Colors.black,

                  ),
                  title:  Text(
                    AppStrings.Language.tr(),
                    style: const TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.white),
                  ),
                  onTap: () {
                    _changeLanguage();
                    navigateTo(context,const SimpleAppBarPage());
                  },
                ),
                ListTile(
                  title:  Text(
                    AppStrings.Mode.tr(),
                    style: const TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.white),
                  ),
                  leading: const Icon(
                    Icons.model_training_sharp,
                    size: 26,
                    color: Colors.black,
                  ),
                  onTap: () {
                       //mode
                  },
                ),
                const SizedBox(height: 25,),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32.0)),
                  child: MaterialButton(
                    color: Colors.teal,
                    child:  Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(AppStrings.sign_out.tr(), style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 28),),
                    ),
                    onPressed: () {
                      //Sign Out
                    },
                  ),
                )
              ],
            ),
          );
        }    );
  }

  bool isRtl() {
    return context.locale == ARABIC_LOCAL;
  }

  _changeLanguage() {
    _appPreferences.changeAppLanguage();
    Phoenix.rebirth(context);
  }
}
