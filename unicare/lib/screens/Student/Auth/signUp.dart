// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:unicare/screens/Student/Auth/signIn.dart';
import 'package:unicare/screens/Student/Auth/signUp.dart';
import 'package:unicare/utils/colors.dart';

import '../../../services/firebase_auth.dart';

class StudentSignUp extends StatelessWidget {
  StudentSignUp({Key? key}) : super(key: key);
  final firebaseAuth = FbAuth();
  bool checkBoxValue = false;
  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final indexController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Sign up',
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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Align(
              alignment: Alignment(-0.6, 0),
              child: Text(
                "Welcome To UniCare",
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
                "Let's get you an account",
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: <Widget>[
                  inputFile(
                      label: "Username",
                      hintText: 'Enter your username',
                      controller: nameController),
                  inputFile(
                      label: "Email",
                      hintText: 'Enter your email address',
                      controller: emailController),
                  inputFile(
                      label: "Index Number",
                      hintText: 'Enter your index/student number',
                      controller: indexController),
                  inputFile(
                      label: "Password",
                      obscureText: true,
                      hintText: 'Enter your password',
                      controller: passwordController),
                  inputFile(
                      label: "Confirm Password ",
                      obscureText: true,
                      hintText: 'Confirm your password'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <Widget>[
                      Checkbox(value: checkBoxValue, onChanged: null),
                      const Text("I agree to the "),
                      GestureDetector(
                        onTap: () {},
                        child: const Text(
                          "terms and conditions.",
                          style: TextStyle(
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    ],
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
                    firebaseAuth.signUp(
                        emailController.text, passwordController.text);
                  },
                  color: AppColors.primaryColor,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(
                    "Sign up",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
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
                        "Sign up with Google",
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                const Text("Already have an account?"),
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StudentSignIn(),
                    ),
                  ),
                  child: const Text(
                    " Sign in",
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
