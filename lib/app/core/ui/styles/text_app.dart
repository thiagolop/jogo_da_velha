import 'package:flutter/material.dart';

class TextStyles {
  static TextStyles? _instance;

  TextStyles._();
  static TextStyles get instance {
    _instance ??= TextStyles._();
    return _instance!;
  }

  String get font => 'Coiny';

  TextStyle get textRegular => TextStyle(fontFamily: font, fontWeight: FontWeight.w400);
  TextStyle get textMedium => TextStyle(fontFamily: font, fontWeight: FontWeight.w500);
  TextStyle get textSemiBold => TextStyle(fontFamily: font, fontWeight: FontWeight.w600);
  TextStyle get textBold => TextStyle(fontFamily: font, fontWeight: FontWeight.w700);
  TextStyle get textExtraBold => TextStyle(fontFamily: font, fontWeight: FontWeight.w800);
  TextStyle get textBlack => TextStyle(fontFamily: font, fontWeight: FontWeight.w900);
}

extension TextStylesExtension on BuildContext {
  TextStyles get textStyles => TextStyles.instance;
}
