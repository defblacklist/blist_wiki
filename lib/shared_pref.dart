import 'package:shared_preferences/shared_preferences.dart';

class SharedPreference{

  static String sharedPreferenceUserLoggedInKey = 'GIRISYAPILDI';

  //sharedPrefence veri kaydetme
  static Future<bool> saveUserLoggedInSharedPreference(bool isUserLoggedIn) async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setBool(sharedPreferenceUserLoggedInKey, isUserLoggedIn);
  }

  //sharedPreference veri alma
  static Future<bool?> getUserLoggedInSharedPreference() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(sharedPreferenceUserLoggedInKey);
  }

}