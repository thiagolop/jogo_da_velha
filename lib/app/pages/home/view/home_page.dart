import 'package:flutter/material.dart';
import 'package:jogo_da_velha/app/core/extensions/responsive.dart';
import 'package:jogo_da_velha/app/core/ui/styles/colors_app.dart';
import 'package:jogo_da_velha/app/core/ui/styles/text_app.dart';
import 'package:jogo_da_velha/app/pages/home/controller/home_controller.dart';
import 'package:jogo_da_velha/app/pages/home/widgets/app_bar_area.dart';
import 'package:jogo_da_velha/app/pages/home/widgets/custom_buttom.dart';
import 'package:jogo_da_velha/app/pages/home/widgets/game_widget.dart';
import 'package:jogo_da_velha/app/pages/home/widgets/on_turn_text.dart';
import 'package:jogo_da_velha/app/pages/home/widgets/score_game.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeController>(
      builder: (_, controller, __) {
        return Scaffold(
          backgroundColor: context.colorsApp.backgroundColor,
          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background2.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: ListView(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 40.heigth, left: 16.width, right: 16.width, bottom: 32.heigth),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const AppBarArea(),
                      const ScoreGame(),
                      SizedBox(height: 50.heigth),
                      OnTurnText(controller: controller, text: controller.jogador),
                      SizedBox(height: 80.heigth),
                      const GameWidget(),
                      Text(controller.vencedor, style: context.textStyles.textCoiny),
                      SizedBox(height: 80.heigth),
                      const CustomButtom(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
