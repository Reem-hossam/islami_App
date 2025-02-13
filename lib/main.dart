
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'Home/home_screen.dart';
import 'onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:OnboardingScreen.routName,
      routes: {
        OnboardingScreen.routName:(context) =>OnboardingScreen(),
        HomeScreen.routeName:(context) => HomeScreen(),
      },
    );
  }
}
