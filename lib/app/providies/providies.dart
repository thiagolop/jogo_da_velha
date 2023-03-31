import 'package:jogo_da_velha/app/pages/home/controller/home_controller.dart';
import 'package:provider/provider.dart';

class AppProviders {
  static final providers = [
    ChangeNotifierProvider<HomeController>(
      create: (_) => HomeController(),
    ),
  ];
}
