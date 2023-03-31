import 'package:flutter/material.dart';
import 'package:jogo_da_velha/app/core/extensions/responsive.dart';
import 'package:jogo_da_velha/app/core/ui/styles/colors_app.dart';
import 'package:jogo_da_velha/app/core/ui/styles/text_app.dart';
import 'package:jogo_da_velha/app/pages/home/controller/home_controller.dart';
import 'package:provider/provider.dart';

class ScoreGame extends StatelessWidget {
  const ScoreGame({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeController>(
      builder: (_, controller, __) {
        return Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 24.heigth,
              left: 0,
              right: 0,
              child: Container(
                height: 120.heigth,
                width: double.maxFinite,
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                decoration: BoxDecoration(
                  gradient: context.colorsApp.gradientName,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    topLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                child: Row(
                  children: [
                    Text(
                      controller.namePlayer2,
                      style: context.textStyles.textCoiny.copyWith(fontSize: 20),
                      overflow: TextOverflow.ellipsis,
                    ),
                    const Spacer(),
                    Text(
                      controller.namePlayer1,
                      style: context.textStyles.textCoiny.copyWith(fontSize: 20),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 12.heigth,
              child: Container(
                width: 500.width,
                height: 150.heigth,
                padding: EdgeInsets.only(left: 32.width, right: 32.width, top: 8.heigth, bottom: 8.heigth),
                decoration: BoxDecoration(
                  gradient: context.colorsApp.gradientScoreTwo,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(60),
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(60),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: context.colorsApp.primaryColor.withOpacity(0.5),
                      blurRadius: 10,
                      spreadRadius: 5,
                      offset: const Offset(0, 0),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 400.width,
                height: 200.heigth,
                padding: EdgeInsets.only(left: 80.width, right: 80.width, top: 40.heigth),
                decoration: BoxDecoration(
                  gradient: context.colorsApp.gradientScoreOne,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(60),
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(60),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: context.colorsApp.whiteColor.withOpacity(0.5),
                      blurRadius: 10,
                      spreadRadius: 2,
                      offset: const Offset(1, 3),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      controller.xScore.toString(),
                      style: context.textStyles.textCoiny.copyWith(fontSize: 28, color: context.colorsApp.whiteColor),
                    ),
                    Text(
                      ' - ',
                      style: context.textStyles.textCoiny.copyWith(fontSize: 28, color: context.colorsApp.whiteColor),
                    ),
                    Text(
                      controller.oScore.toString(),
                      style: context.textStyles.textCoiny.copyWith(fontSize: 28, color: context.colorsApp.whiteColor),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
