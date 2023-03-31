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
          children: [
            Positioned(
              top: 10,
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                decoration: BoxDecoration(
                  gradient: context.colorsApp.gradient,
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
                      style: context.textStyles.textCoiny.copyWith(fontSize: 24),
                      overflow: TextOverflow.ellipsis,
                    ),
                    const Spacer(),
                    Text(
                      controller.namePlayer1,
                      style: context.textStyles.textCoiny.copyWith(fontSize: 24),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Flexible(
                child: Container(
                  width: 400.width,
                  height: 200.heigth,
                  padding: const EdgeInsets.only(left: 32, right: 32, top: 8, bottom: 8),
                  decoration: BoxDecoration(
                    gradient: context.colorsApp.gradient,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(60),
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(60),
                    ),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Placar',
                        style: context.textStyles.textCoiny.copyWith(fontSize: 24, color: context.colorsApp.primaryColor),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            controller.xScore.toString(),
                            style: context.textStyles.textCoiny.copyWith(fontSize: 28, color: context.colorsApp.primaryColor),
                          ),
                          Text(
                            ' - ',
                            style: context.textStyles.textCoiny.copyWith(fontSize: 28, color: context.colorsApp.primaryColor),
                          ),
                          Text(
                            controller.oScore.toString(),
                            style: context.textStyles.textCoiny.copyWith(fontSize: 28, color: context.colorsApp.primaryColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Container(
            //   width: double.maxFinite,
            //   alignment: Alignment.centerLeft,
            //   padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            //   decoration: const BoxDecoration(
            //     color: Colors.red,
            //     borderRadius: BorderRadius.only(bottomRight: Radius.circular(10), topRight: Radius.circular(10)),
            //   ),
            //   child: Text(
            //     controller.namePlayer2,
            //     style: context.textStyles.textCoiny.copyWith(fontSize: 24),
            //   ),
            // ),
          ],
        );
        // return Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     Container(
        //       padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        //       decoration: const BoxDecoration(
        //         color: Colors.green,
        //         borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topLeft: Radius.circular(10)),
        //       ),
        //       child: Text(
        //         controller.namePlayer1,
        //         style: context.textStyles.textCoiny.copyWith(fontSize: 24),
        //         overflow: TextOverflow.ellipsis,
        //       ),
        //     ),
        //     Container(
        //         padding: const EdgeInsets.only(left: 32, right: 32, top: 8, bottom: 8),
        //         decoration: BoxDecoration(
        //           gradient: context.colorsApp.gradient,
        //           borderRadius: const BorderRadius.only(
        //             topRight: Radius.circular(10),
        //             bottomRight: Radius.circular(40),
        //             topLeft: Radius.circular(10),
        //             bottomLeft: Radius.circular(40),
        //           ),
        //         ),
        //         child: Row(
        //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //           children: [
        //             Text(
        //               controller.xScore.toString(),
        //               style: context.textStyles.textCoiny.copyWith(fontSize: 28, color: context.colorsApp.primaryColor),
        //             ),
        //             Text(
        //               ' - ',
        //               style: context.textStyles.textCoiny.copyWith(fontSize: 28, color: context.colorsApp.primaryColor),
        //             ),
        //             Text(
        //               controller.oScore.toString(),
        //               style: context.textStyles.textCoiny.copyWith(fontSize: 28, color: context.colorsApp.primaryColor),
        //             ),
        //           ],
        //         )),
        //     Container(
        //       padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        //       decoration: const BoxDecoration(
        //         color: Colors.red,
        //         borderRadius: BorderRadius.only(bottomRight: Radius.circular(10), topRight: Radius.circular(10)),
        //       ),
        //       child: Text(
        //         controller.namePlayer2,
        //         style: context.textStyles.textCoiny.copyWith(fontSize: 24),
        //       ),
        //     ),
        //   ],
        // );
      },
    );
  }
}
