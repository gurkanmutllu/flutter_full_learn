import 'dart:ui';

import 'package:flutter/material.dart';

class LightTheme {
  final _lightColor = _LightColor();

  late ThemeData theme;

  LightTheme() {
    theme = ThemeData(
        appBarTheme: AppBarTheme(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)))),
        scaffoldBackgroundColor: Colors.white.withOpacity(0.8),
        floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: Colors.deepPurpleAccent),
        buttonTheme: ButtonThemeData(colorScheme: ColorScheme.light(onSecondary: _lightColor.purple)),
        colorScheme: ColorScheme.light(),
        checkboxTheme: CheckboxThemeData(
            fillColor: MaterialStateProperty.all(Colors.green), side: BorderSide(color: Colors.green)),
        textTheme: ThemeData.light().textTheme.copyWith(
              subtitle1: TextStyle(fontSize: 54, color: _lightColor.black),
            ));
  }
}

class _LightColor {
  final Color black = Colors.black;
  final Color purple = Colors.purple;
}
