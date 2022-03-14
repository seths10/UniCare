import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:unicare/screens/Welcome/welcome.dart';

void main() => runApp(const UniCare());

class UniCare extends StatelessWidget {
  const UniCare({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.white,
      theme: ThemeData(fontFamily: 'Poppins'),
      home: AnimatedSplashScreen(
        splash: 'assets/images/logo.png',
        duration: 500,
        nextScreen: const Welcome(),
        splashTransition: SplashTransition.fadeTransition,
      ),
    );
  }
}
