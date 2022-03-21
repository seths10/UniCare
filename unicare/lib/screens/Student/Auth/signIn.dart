// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:unicare/screens/Student/Auth/signUp.dart';
import 'package:unicare/screens/Student/Home/home.dart';
import 'package:unicare/services/firebase_auth.dart';
import 'package:unicare/utils/colors.dart';

class StudentSignIn extends StatefulWidget {
  const StudentSignIn({Key? key}) : super(key: key);

  @override
  State<StudentSignIn> createState() => _StudentSignInState();
}

class _StudentSignInState extends State<StudentSignIn> {
  final firebaseAuth = FbAuth();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Sign In',
          style: TextStyle(
            color: AppColors.textColor,
            fontSize: 16,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            const Align(
              alignment: Alignment(-0.6, 0),
              child: Text(
                "Welcome Back,\nyou have been missed",
                style: TextStyle(
                    height: 1.2, fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            // ignore: prefer_const_constructors
            Align(
              alignment: const Alignment(-0.7, 0),
              child: const Text(
                "Let's get you signed in.",
                // ignore: prefer_const_constructors
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.subTextColor,
                ),
              ),
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 5,
            ),
            Container(
              padding: const EdgeInsets.only(top: 5),
              height: 200,
              decoration: const BoxDecoration(
                // ignore: unnecessary_const
                image: const DecorationImage(
                    image: AssetImage("assets/images/student.png"),
                    fit: BoxFit.fitHeight),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: <Widget>[
                  inputFile(
                      label: "Username",
                      hintText: 'Enter your username',
                      controller: emailController),
                  inputFile(
                      label: "Password",
                      obscureText: true,
                      hintText: 'Enter your password',
                      controller: passwordController),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                padding: const EdgeInsets.only(top: 3, left: 3),
                child: MaterialButton(
                  minWidth: double.infinity,
                  height: 50,
                  onPressed: () {
                    firebaseAuth.signIn(
                        emailController.text, passwordController.text);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => StudentHome(),
                      ),
                    );
                  },
                  color: AppColors.primaryColor,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(
                    "Sign in",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Container(
                padding: const EdgeInsets.only(top: 1, left: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: const Border(
                      bottom: BorderSide(color: Colors.black),
                      top: BorderSide(color: Colors.black),
                      left: BorderSide(color: Colors.black),
                      right: BorderSide(color: Colors.black),
                    )),
                child: MaterialButton(
                  // minWidth: double.infinity,
                  minWidth: double.infinity,
                  height: 35,
                  onPressed: () {
                    firebaseAuth.signInWithGoogle();
                  },
                  color: Colors.white,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Image.asset(
                        'assets/logos/google_logo.png',
                        width: 70,
                        height: 35,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "Continue with Google",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                const Text("Don't have an account?"),
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StudentSignUp(),
                    ),
                  ),
                  child: const Text(
                    " create one",
                    style: TextStyle(
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget inputFile({label, obscureText = false, hintText, controller}) {
  var hintText2 = hintText;
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: const TextStyle(
            fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black87),
      ),
      const SizedBox(
        height: 5,
      ),
      TextField(
        obscureText: obscureText,
        controller: controller,
        decoration: InputDecoration(
            hintText: hintText2,
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            // ignore: prefer_const_constructors
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFBDBDBD)),
            ),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFBDBDBD)))),
      ),
      const SizedBox(
        height: 10,
      )
    ],
  );
}
