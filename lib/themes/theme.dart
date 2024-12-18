import 'package:flutter/material.dart';

ThemeData lightmode = ThemeData(
  colorScheme: const ColorScheme.light(
    brightness: Brightness.light,
    background: Color(0xffEBF2FA),
    primary: Color(0xff002A3C),
  ),
);

ThemeData darkmode = ThemeData(
  colorScheme: const ColorScheme.dark(
    brightness: Brightness.dark,
    background: Color(0xff002A3C),
    primary: Color(0xffEBF2FA),
  ),
);
