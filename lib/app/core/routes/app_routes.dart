import 'package:flutter/material.dart';
import 'package:jogo_da_velha/app/pages/error/error_page.dart';
import 'package:jogo_da_velha/app/pages/home/view/home_page.dart';
import 'package:jogo_da_velha/app/pages/register/register_page.dart';

class AppRoutes {
  static const String register = '/';
  static const String home = '/home';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/home":
        return MaterialPageRoute(builder: (context) => const HomePage());
      case "/":
        return MaterialPageRoute(builder: (context) => const RegisterPage());
      default:
        return MaterialPageRoute(builder: (context) => const ErrorPage());
    }
  }
}
