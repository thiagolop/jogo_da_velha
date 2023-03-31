import 'package:flutter/material.dart';
import 'package:jogo_da_velha/app/core/extensions/responsive.dart';
import 'package:jogo_da_velha/app/core/inputs/custon_elevated_buttom.dart';
import 'package:jogo_da_velha/app/core/ui/styles/colors_app.dart';
import 'package:jogo_da_velha/app/core/ui/styles/text_app.dart';
import 'package:jogo_da_velha/app/pages/home/controller/home_controller.dart';
import 'package:provider/provider.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeController>(
      builder: (_, controller, __) {
        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Form(
            key: controller.formKey,
            child: Scaffold(
              backgroundColor: context.colorsApp.backgroundColor,
              body: Padding(
                padding: EdgeInsets.only(left: 32.width, right: 32.width, top: 180.heigth),
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    Column(
                      children: [
                        Center(
                          child: Text(
                            'Jogo \nda \nVelha',
                            style: context.textStyles.textCoiny.copyWith(color: context.colorsApp.whiteColor, fontSize: 80),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 180.heigth),
                        TextFormField(
                          style: context.textStyles.textCoiny.copyWith(color: context.colorsApp.primaryColor, fontSize: 18),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          controller: controller.namePlayer1Controller,
                          validator: (value) {
                            if (controller.namePlayer1.isEmpty) {
                              return 'Campo obrigatório';
                            } else if (controller.namePlayer1.length < 3) {
                              return 'Nome deve ter no mínimo 3 caracteres';
                            } else if (controller.namePlayer1.length > 9) {
                              return 'Nome deve ter no máximo 10 caracteres';
                            } else if (controller.namePlayer1.contains(' ')) {
                              return 'Nome não deve conter espaços';
                            } else if (controller.namePlayer1.contains(RegExp(r'[0-9]'))) {
                              return 'Nome não deve conter números';
                            } else if (controller.namePlayer1.contains(RegExp(r'[!@#<>?":_`~;[\]\\|=+)(*&^%0-9-]'))) {
                              return 'Nome não deve conter caracteres especiais';
                            } else if (controller.namePlayer1.contains(RegExp(r'[.,]'))) {
                              return 'Nome não deve conter caracteres especiais';
                            } else if (controller.namePlayer1.contains(RegExp(r'[áéíóúàèìòùâêîôûãõäëïöü]'))) {
                              return 'Nome não deve conter caracteres especiais';
                            } else if (controller.namePlayer1.contains(RegExp(r'[ÁÉÍÓÚÀÈÌÒÙÂÊÎÔÛÃÕÄËÏÖÜ]'))) {
                              return 'Nome não deve conter caracteres especiais';
                            } else if (controller.namePlayer1.contains(RegExp(r'[çÇ]'))) {
                              return 'Nome não deve conter caracteres especiais';
                            } else if (controller.namePlayer1.contains(RegExp(r'[ñÑ]'))) {
                              return 'Nome não deve conter caracteres especiais';
                            } else if (controller.namePlayer1.contains(RegExp(r'[ýÿ]'))) {
                              return 'Nome não deve conter caracteres especiais';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            label: const Text('Nome do Jogador 1'),
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            hintStyle: context.textStyles.textCoiny.copyWith(color: context.colorsApp.primaryColor, fontSize: 16),
                            errorStyle: context.textStyles.textCoiny.copyWith(color: context.colorsApp.matched, fontSize: 16),
                            labelStyle: context.textStyles.textCoiny.copyWith(color: context.colorsApp.primaryColor, fontSize: 18),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            fillColor: context.colorsApp.whiteColor,
                          ),
                        ),
                        SizedBox(height: 32.heigth),
                        TextFormField(
                          style: context.textStyles.textCoiny.copyWith(color: context.colorsApp.primaryColor, fontSize: 18),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          textInputAction: TextInputAction.send,
                          controller: controller.namePlayer2Controller,
                          validator: (value) {
                            if (controller.namePlayer2.isEmpty) {
                              return 'Campo obrigatório';
                            }
                            if (controller.namePlayer2 == controller.namePlayer1Controller.text) {
                              return 'Nome do jogador 2 deve ser diferente do jogador 1';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            label: const Text('Nome do Jogador 2'),
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            hintStyle: context.textStyles.textCoiny.copyWith(color: context.colorsApp.primaryColor, fontSize: 16),
                            errorStyle: context.textStyles.textCoiny.copyWith(color: context.colorsApp.matched, fontSize: 16),
                            labelStyle: context.textStyles.textCoiny.copyWith(color: context.colorsApp.primaryColor, fontSize: 18),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            fillColor: context.colorsApp.whiteColor,
                          ),
                        ),
                        SizedBox(height: 180.heigth),
                        CustomElevatedButtom(
                            onPressed: () {
                              if (controller.formKey.currentState!.validate()) {
                                Navigator.pushNamed(context, '/home');
                              }
                            },
                            label: 'Jogar')
                      ],
                    ),
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
