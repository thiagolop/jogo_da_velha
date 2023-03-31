import 'package:flutter/material.dart';

class ColorsApp {
  static ColorsApp? _instance;

  ColorsApp._();

  static ColorsApp get instance {
    _instance ??= ColorsApp._();
    return _instance!;
  }

  Color get primaryColor => const Color(0xFF000000);
  Color get matched => const Color(0xFFFF0000);
  Color get backgroundColor => const Color(0xFF2E2D31);
  Color get whiteColor => const Color(0xFFFFFFFF);

  Gradient get gradient => LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Colors.green[800]!,
          Colors.green,
          Colors.red,
          Colors.red[800]!,
        ],
      );
}

extension ColorsAppExtension on BuildContext {
  ColorsApp get colorsApp => ColorsApp.instance;
}
