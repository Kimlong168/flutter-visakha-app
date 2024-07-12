import 'package:flutter/material.dart';

class ChangeThemeLogic extends ChangeNotifier {
  int _themeIndex = 0;
  int get themeIndex => _themeIndex;

  // void changeToSystem() {
  //   _themeIndex = 0;
  //   notifyListeners();
  // }

  void changeToLight() {
    _themeIndex = 1;
    notifyListeners();
  }

  void changeToDark() {
    _themeIndex = 2;
    notifyListeners();
  }
}
