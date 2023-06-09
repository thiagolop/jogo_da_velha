import 'package:flutter/material.dart';

class ColorsApp {
  static ColorsApp? _instance;

  ColorsApp._();

  static ColorsApp get instance {
    _instance ??= ColorsApp._();
    return _instance!;
  }

  Color get primaryColor => const Color(0xFF000000);
  Color get matched => const Color(0xFF00FF0D);
  Color get backgroundColor => const Color(0xFF2E2D31);
  Color get whiteColor => const Color(0xFFFFFFFF);
  Color get redColor => const Color(0xFFE90000);
  Color get colorX => const Color(0xFF070ADF);
  Color get colorO => const Color(0xFFE90000);

  Gradient get gradientName => const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Color(0xFF070ADF), Color(0xFF171AAC), Colors.red, Color(0xFFE90000)],
      );

  Gradient get gradientScoreOne => const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Color(0xFF1F1A1A), Color(0xFF201F1F), Color(0xFF000000)],
      );

  Gradient get gradientScoreTwo => const LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [Color.fromARGB(255, 1, 11, 144), Color.fromARGB(255, 135, 2, 2)],
      );

  Gradient get gradientBackgroundColor => const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Color.fromARGB(255, 0, 0, 0), Color.fromARGB(255, 43, 42, 42)],
      );
}

extension ColorsAppExtension on BuildContext {
  ColorsApp get colorsApp => ColorsApp.instance;
}
