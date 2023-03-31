import 'package:flutter/material.dart';
import 'package:jogo_da_velha/app/core/ui/styles/colors_app.dart';
import 'package:jogo_da_velha/app/core/ui/styles/text_app.dart';

class CustomElevatedButtom extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;
  const CustomElevatedButtom({Key? key, required this.onPressed, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: context.colorsApp.primaryColor,
        elevation: 10,
        foregroundColor: context.colorsApp.whiteColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: context.colorsApp.whiteColor, width: 2),
        ),
      ),
      child: Text(label, style: context.textStyles.textCoiny.copyWith(color: context.colorsApp.whiteColor, fontSize: 26)),
    );
  }
}
