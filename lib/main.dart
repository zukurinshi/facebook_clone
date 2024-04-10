import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:facebook_clone/screens/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facebook',
      home: AnimatedSplashScreen(
        splash: 'images/facebook.png',
        nextScreen: HomePage(),
        splashTransition: SplashTransition.rotationTransition,
        // pageTransitionType: PageTransitionType.scale,
      ),
    );
  }
}
