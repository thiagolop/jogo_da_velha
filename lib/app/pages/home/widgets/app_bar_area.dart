import 'package:flutter/material.dart';
import 'package:jogo_da_velha/app/core/extensions/responsive.dart';
import 'package:jogo_da_velha/app/core/ui/styles/colors_app.dart';

class AppBarArea extends StatelessWidget {
  const AppBarArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Align(
        alignment: Alignment.topLeft,
        child: SizedBox(
          height: 50.heigth,
          child: InkWell(
            onTap: () => Navigator.of(context).pop(),
            child: Icon(Icons.arrow_back_outlined, color: context.colorsApp.whiteColor),
          ),
        ),
      ),
    );
  }
}
