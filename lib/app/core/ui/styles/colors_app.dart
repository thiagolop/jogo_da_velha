import 'package:flutter/material.dart';

class ColorsApp {
  static ColorsApp? _instance;

  ColorsApp._();

  static ColorsApp get instance {
    _instance ??= ColorsApp._();
    return _instance!;
  }

  Color get primaryColor => const Color(0xFF302775);
  Color get primaryColorDark => const Color(0xFF1E1A3D);
  Color get primaryColorLight => const Color(0xFF4F4A9D);
  Color get secondaryColor => const Color(0xFF258841);
  Color get secondaryColorDark => const Color(0xFF1A5A2B);
  Color get secondaryColorLight => const Color(0xFF3DAF5F);
  Color get play01 => const Color(0xFFFF0000);
  Color get play02 => const Color(0xFF2600FF);
}

extension ColorsAppExtension on BuildContext {
  ColorsApp get colorsApp => ColorsApp.instance;
}
