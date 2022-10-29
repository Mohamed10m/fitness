import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fitness/shared/network/local/cache_helper.dart';
import 'package:fitness/shared/componants/componants.dart';
import 'package:fitness/modules/signup_screen/create_profiile.dart';
import 'package:fitness/shared/network/local/di.dart';
import 'package:fitness/layout/home_layout/home_view.dart';
import 'package:fitness/shared/componants/language_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'layout/home_layout/cubit/home_cubit.dart';
import 'layout/home_layout/cubit/home_states.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.teal, statusBarIconBrightness: Brightness.light));

  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Firebase.initializeApp();
  await initAppModule();

  await AppPreferences.init();
  uId = await AppPreferences.getData('uId');

  runApp(EasyLocalization(
    child: Phoenix(child: const MyApp()),
    saveLocale: true,
    supportedLocales: const [ARABIC_LOCAL, ENGLISH_LOCAL],
    path: ASSET_PATH_LOCALISATIONS,
    fallbackLocale: const Locale('en', 'US'),
  ));
}

class MyApp extends StatefulWidget {
  static const String title = 'BODYBUILDING & FITNESS';

  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AppPreferences _appPreferences = instance<AppPreferences>();

  @override
  void didChangeDependencies() {
    _appPreferences.getLocal().then((local) => {context.setLocale(local)});
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    Widget widget;
    if (uId != null) {
      widget = const SimpleAppBarPage();
    } else {
      widget = const CreateScreen();
    }

    return BlocProvider(
        create: (BuildContext context) => AppCubit()..getUserData(),
        child: BlocConsumer<AppCubit, AppStates>(
            listener: (context, state) {},
            builder: (context, state) {
              return MaterialApp(
                  localizationsDelegates: context.localizationDelegates,
                  supportedLocales: context.supportedLocales,
                  locale: context.locale,
                  theme: ThemeData(
                      appBarTheme: AppBarTheme(
                          actionsIconTheme:
                              const IconThemeData(color: Colors.blueGrey),
                          systemOverlayStyle: SystemUiOverlayStyle(
                              statusBarColor: Colors.grey[300],
                              statusBarIconBrightness: Brightness.dark))),
                  debugShowCheckedModeBanner: false,
                  home: widget);
            }));
  }
}
