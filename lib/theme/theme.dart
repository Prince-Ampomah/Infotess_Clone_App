import 'package:flutter/material.dart';
import 'package:flutterapp/screens/change_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
);

class ThemeChanger extends ChangeNotifier {
  final String key = 'theme';
  SharedPreferences prefs;
  bool _darkTheme;

  bool get darkTheme => _darkTheme;

  ThemeChanger() {
    _darkTheme = false;
    loadTheme();
   
  }

  toggleTheme() {
    _darkTheme = !_darkTheme;
    saveTheme();
    notifyListeners();
  
  }

  initPrefs() async{
    if(prefs == null){
      prefs = await SharedPreferences.getInstance();
    }

  }


  saveTheme() async {
    await initPrefs();
    prefs.setBool(key, _darkTheme);
  }

  loadTheme() async {
   await initPrefs();
     _darkTheme = prefs.getBool(key)?? true;
     notifyListeners();
  }

}

class ThemeNotifier extends ChangeNotifier{

  ThemeData _themeData;
  ThemeNotifier(this._themeData);

  getTheme()=> _themeData;

  setTheme(ThemeData themeData){
    _themeData = themeData;
    notifyListeners();
  }

}
