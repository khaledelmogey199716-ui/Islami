import 'package:flutter/material.dart';
import 'package:islami/core/resources/routes_manager.dart';
import 'package:islami/ui/home/screen/home_screen.dart';
import 'package:islami/ui/on_boarding/screen/on_boarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        RoutesManager.homeRouteName: (_) => HomeScreen(),
        RoutesManager.onBoardingRouteName: (_) => OnBoarding(),
      },
      initialRoute: RoutesManager.onBoardingRouteName,
    );
  }
}
