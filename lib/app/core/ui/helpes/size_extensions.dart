import 'package:flutter/material.dart';

extension SizeExyensions on BuildContext {
  double get screenHeight => MediaQuery.of(this).size.height;
  double get screenWidth => MediaQuery.of(this).size.width;

  double percentWith(double percent) => screenWidth * percent;
  double percentHeight(double percent) => screenHeight * percent;
}
