import 'package:flutter/material.dart';
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
                  offset: const Offset(0, -3),
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
          body: ListView(
            padding: const EdgeInsets.all(0),
            children: [
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.942,
                    width: double.maxFinite,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/background2.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 16),
                      const AppBarArea(),
                      const ScoreGame(),
                      const SizedBox(height: 8),
                      OnTurnText(controller: controller, text: controller.jogador),
                      const SizedBox(height: 8),
                      const GameWidget(),
                      const SizedBox(height: 8),
                      Text(controller.vencedor, style: context.textStyles.textCoiny.copyWith(fontSize: 26)),
                      const SizedBox(height: 8),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: CustomButtom(),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
