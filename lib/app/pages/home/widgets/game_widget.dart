import 'package:flutter/material.dart';
import 'package:jogo_da_velha/app/core/ui/styles/colors_app.dart';
import 'package:jogo_da_velha/app/core/ui/styles/text_app.dart';
import 'package:jogo_da_velha/app/pages/home/controller/home_controller.dart';
import 'package:provider/provider.dart';

class GameWidget extends StatelessWidget {
  const GameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeController>(
      builder: (_, controller, __) {
        return SizedBox(
          height: 400,
          width: 400,
          child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 9,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    if (controller.isGaming) controller.play(index);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: context.colorsApp.backgroundColor, width: 5),
                      color: controller.matched.contains(index) ? context.colorsApp.matched : context.colorsApp.primaryColor,
                    ),
                    child: Center(
                      child: Text(
                        controller.board[index],
                        style: context.textStyles.textCoiny.copyWith(fontSize: 90),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                );
              }),
        );
      },
    );
  }
}
