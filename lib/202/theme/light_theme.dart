import 'package:flutter/material.dart';

class LightTheme {
  final _lightColor = _LightColor();

  late ThemeData theme;

  LightTheme() {
    theme = ThemeData(
        appBarTheme: const AppBarTheme(
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(20)))),
        scaffoldBackgroundColor: Colors.white.withOpacity(0.8),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: Colors.deepPurpleAccent),
        buttonTheme: ButtonThemeData(
            colorScheme: ColorScheme.light(onSecondary: _lightColor.purple)),
        colorScheme: const ColorScheme.light(),
        checkboxTheme: CheckboxThemeData(
            fillColor: MaterialStateProperty.all(Colors.green),
            side: const BorderSide(color: Colors.green)),
        textTheme: ThemeData.light().textTheme.copyWith(
              titleMedium: TextStyle(fontSize: 54, color: _lightColor.black),
            ));
  }
}

class _LightColor {
  final Color black = Colors.black;
  final Color purple = Colors.purple;
}
