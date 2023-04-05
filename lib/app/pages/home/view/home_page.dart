import 'package:flutter/material.dart';
import 'package:jogo_da_velha/app/core/extensions/responsive.dart';
import 'package:jogo_da_velha/app/core/ui/styles/text_app.dart';
import 'package:jogo_da_velha/app/pages/home/controller/home_controller.dart';
import 'package:jogo_da_velha/app/pages/home/widgets/app_bar_area.dart';
import 'package:jogo_da_velha/app/pages/home/widgets/custom_buttom.dart';
import 'package:jogo_da_velha/app/pages/home/widgets/game_widget.dart';
import 'package:jogo_da_velha/app/pages/home/widgets/on_turn_text.dart';
import 'package:jogo_da_velha/app/pages/home/widgets/score_game.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    context.read<HomeController>().loadBanner(context);
  }

  @override
  void dispose() {
    context.read<HomeController>().myBanner.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeController>(
      builder: (_, controller, __) {
        return Scaffold(
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 0,
                  blurRadius: 10,
                  offset: const Offset(0, -3), // changes position of shadow
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                controller.adContainer(),
              ],
            ),
          ),
          body: Container(
            height: double.maxFinite,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background2.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(top: 40.heigth, left: 16.width, right: 16.width, bottom: 32.heigth),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 50.heigth),
                    const AppBarArea(),
                    const ScoreGame(),
                    SizedBox(height: 50.heigth),
                    OnTurnText(controller: controller, text: controller.jogador),
                    SizedBox(height: 50.heigth),
                    const GameWidget(),
                    Text(controller.vencedor, style: context.textStyles.textCoiny),
                    SizedBox(height: 80.heigth),
                    const CustomButtom(),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
