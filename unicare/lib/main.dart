import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:provider/provider.dart';
import 'package:unicare/controllers/user_provider.dart';
import 'package:unicare/models/user.dart';
import 'package:unicare/screens/Student/Home/home.dart';
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
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => UserProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        color: Colors.white,
        theme: ThemeData(fontFamily: 'Poppins'),
        home: AnimatedSplashScreen(
          splash: 'assets/images/logo.png',
          duration: 500,
          nextScreen: const WaitingScreen(),
          splashTransition: SplashTransition.fadeTransition,
        ),
      ),
    );
  }
}

class WaitingScreen extends StatefulWidget {
  const WaitingScreen({Key? key}) : super(key: key);

  @override
  State<WaitingScreen> createState() => _WaitindScreenState();
}

class _WaitindScreenState extends State<WaitingScreen> {
  @override
  Widget build(BuildContext context) {
    User user = Provider.of<UserProvider>(context).user;

    return user.id != "" ? const StudentHome() : const Welcome();
  }
}
