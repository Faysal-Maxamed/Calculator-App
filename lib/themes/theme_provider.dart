import 'package:calculator/themes/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeData = lightmode;

  ThemeData get themeData => _themeData;

  set waqti(ThemeData themdate) {
    _themeData = themdate;
    notifyListeners();
  }

  void ontoggletheme() {
    if (_themeData == lightmode) {
      waqti = darkmode;
    } else {
      waqti = lightmode;
    }
  }
}
