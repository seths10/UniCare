import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:unicare/screens/Chat/chat.dart';
import 'package:unicare/screens/Therapist/Home/home.dart';
import 'package:unicare/screens/Welcome/welcome.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const UniCare());
}

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
        duration: 700,
        nextScreen: const TherapistHome(),
        splashIconSize: 130,
        splashTransition: SplashTransition.fadeTransition,
      ),
    );
  }
}
