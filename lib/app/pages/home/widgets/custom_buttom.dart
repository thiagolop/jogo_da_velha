import 'package:flutter/material.dart';
import 'package:jogo_da_velha/app/core/inputs/custon_elevated_buttom.dart';
import 'package:jogo_da_velha/app/pages/home/controller/home_controller.dart';
import 'package:provider/provider.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeController>(
      builder: (_, controller, __) {
        return Row(
          children: [
            Expanded(
                child: CustomElevatedButtom(
                    onPressed: () {
                      controller.reset();
                    },
                    label: 'Reiniciar')),
            const SizedBox(width: 16),
            Expanded(
                child: CustomElevatedButtom(
                    onPressed: () {
                      controller.resetScore();
                      controller.reset();
                    },
                    label: 'Resetar')),
          ],
        );
      },
    );
  }
}
