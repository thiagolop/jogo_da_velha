import 'package:flutter/material.dart';
import 'package:jogo_da_velha/app/pages/error/error_page.dart';
import 'package:jogo_da_velha/app/pages/home/home_page.dart';

class AppRoutes {
  static const String login = '/';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    // final args = settings.arguments;
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => const HomePage());
      default:
        return MaterialPageRoute(builder: (context) => const ErrorPage());
    }
  }
}
