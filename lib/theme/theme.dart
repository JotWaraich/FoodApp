import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    surface: Color(0xffF3F3F3),
    onSurface: Color(0xff181C2E),
    primary: Color(0xffff7622),
    secondary: Color(0xff676767),
  ),
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    surface: Color(0xff181c2e),
    onSurface: Color(0xffF3F3F3),
    primary: Color(0xffff7622),
    secondary: Color(0xff676767),
  ),
);
