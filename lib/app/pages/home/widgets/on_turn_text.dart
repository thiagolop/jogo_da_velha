import 'package:flutter/material.dart';
import 'package:jogo_da_velha/app/core/ui/helpes/size_extensions.dart';
import 'package:jogo_da_velha/app/core/ui/styles/colors_app.dart';
import 'package:jogo_da_velha/app/core/ui/styles/text_app.dart';
import 'package:jogo_da_velha/app/pages/home/controller/home_controller.dart';

class OnTurnText extends StatelessWidget {
  final HomeController controller;
  final String text;
  const OnTurnText({
    super.key,
    required this.controller,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: controller.isGaming,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: context.percentWith(0.1), vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: context.colorsApp.backgroundColor, width: 2),
          color: Colors.black.withOpacity(0.4),
        ),
        child: Text(
          text,
          style: context.textStyles.textCoiny.copyWith(color: context.colorsApp.whiteColor),
        ),
      ),
    );
  }
}
