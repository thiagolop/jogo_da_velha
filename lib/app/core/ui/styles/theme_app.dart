import 'package:flutter/material.dart';

class ThemeApp {
  ThemeApp._();
  static final _defaultInputBorderLigth = OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: BorderSide(
      color: MaterialStateColor.resolveWith((states) {
        if (states.contains(MaterialState.focused)) return const Color(0xFF302775);
        if (states.contains(MaterialState.error)) return Colors.red;
        return Colors.grey;
      }),
    ),
  );
  static final themeDart = ThemeData(
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: const Color(0xFF302775),
      secondary: const Color(0xFF258841),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: _defaultInputBorderLigth,
      errorBorder: _defaultInputBorderLigth,
    ),
  );
}
