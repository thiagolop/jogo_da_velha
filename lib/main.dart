import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:jogo_da_velha/app/core/routes/app_routes.dart';
import 'package:jogo_da_velha/app/core/ui/styles/theme_app.dart';
import 'package:jogo_da_velha/app/providies/providies.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();

  runApp(MultiProvider(
    providers: AppProviders.providers,
    child: const JogoDaVelhaApp(),
  ));
}

class JogoDaVelhaApp extends StatelessWidget {
  const JogoDaVelhaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jogo da Velha',
      theme: ThemeApp.themeDart,
      initialRoute: '/',
      onGenerateRoute: AppRoutes.generateRoute,
    );
  }
}
