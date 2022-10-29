// import 'package:fitness/presentation/resources/language_manager.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
//
// const String PREFS_KEY_LANG ="PREFS_KEY_LANG" ;
//
//
// class AppPreferences {
//
//   // static late SharedPreferences cacheHelper;
//   //
//   // static init() async {
//   //   cacheHelper = await SharedPreferences.getInstance();
//   // }
//
//
//   final SharedPreferences _sharedPreferences;
//
//   AppPreferences(this._sharedPreferences);
//
//   Future<String> getAppLanguage() async {
//     String? language = _sharedPreferences.getString(PREFS_KEY_LANG);
//     if (language != null && language.isNotEmpty) {
//       return language;
//     } else {
//       // return default lang
//       return LanguageType.ENGLISH.getValue();
//     }
//   }
//
//   Future<void> changeAppLanguage() async {
//     String currentLang = await getAppLanguage();
//
//     if (currentLang == LanguageType.ARABIC.getValue()) {
//       // set english
//       _sharedPreferences.setString(
//           PREFS_KEY_LANG, LanguageType.ENGLISH.getValue());
//     } else {
//       // set arabic
//       _sharedPreferences.setString(
//           PREFS_KEY_LANG, LanguageType.ARABIC.getValue());
//     }
//   }
//
//   Future<Locale> getLocal() async {
//     String currentLang = await getAppLanguage();
//
//     if (currentLang == LanguageType.ARABIC.getValue()) {
//       return ARABIC_LOCAL;
//     } else {
//       return ENGLISH_LOCAL;
//     }
//   }
//
//   // static Future<bool?> saveData(String key,value) async{
//   //   if(value is bool) {
//   //     return await cacheHelper.setBool(key, value);
//   //   }
//   //   if(value is String) {
//   //     return await cacheHelper.setString(key, value);
//   //   }
//   //   if(value is int) {
//   //     return await cacheHelper.setInt(key, value);
//   //   }
//   //   return null;
//   // }
//   //
//   // static getData(String key){
//   //   return cacheHelper.get(key);
//   // }
//   //
//   //
//   // static Future<bool> removeData(String? key){
//   //   return cacheHelper.remove(key!);
//   // }
//
// }
import 'package:fitness/shared/componants/language_manager.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


const String PREFS_KEY_LANG = "PREFS_KEY_LANG";
const String PREFS_KEY_ONBOARDING_SCREEN_VIEWED =
    "PREFS_KEY_ONBOARDING_SCREEN_VIEWED";
const String PREFS_KEY_IS_USER_LOGGED_IN = "PREFS_KEY_IS_USER_LOGGED_IN";

class AppPreferences {
  final SharedPreferences _sharedPreferences;

  AppPreferences(this._sharedPreferences);

  Future<String> getAppLanguage() async {
    String? language = _sharedPreferences.getString(PREFS_KEY_LANG);
    if (language != null && language.isNotEmpty) {
      return language;
    } else {
      // return default lang
      return LanguageType.ENGLISH.getValue();
    }
  }

  Future<void> changeAppLanguage() async {
    String currentLang = await getAppLanguage();

    if (currentLang == LanguageType.ARABIC.getValue()) {
      // set english
      _sharedPreferences.setString(
          PREFS_KEY_LANG, LanguageType.ENGLISH.getValue());
    } else {
      // set arabic
      _sharedPreferences.setString(
          PREFS_KEY_LANG, LanguageType.ARABIC.getValue());
    }
  }


  static late SharedPreferences cacheHelper;

  static init() async {
  cacheHelper = await SharedPreferences.getInstance();
  }

  Future<Locale> getLocal() async {
    String currentLang = await getAppLanguage();

    if (currentLang == LanguageType.ARABIC.getValue()) {
      return ARABIC_LOCAL;
    } else {
      return ENGLISH_LOCAL;
    }
  }

  static Future<bool?> saveData(String key, value) async {
    if (value is bool) return await cacheHelper.setBool(key, value);
    if (value is String) return await cacheHelper.setString(key, value);
    if (value is int) return await cacheHelper.setInt(key, value);
    return null;
  }

  static getData(String key) {
    return cacheHelper.get(key);
  }

  static Future<bool> removeData(String? key) {
    return cacheHelper.remove(key!);
  }
}