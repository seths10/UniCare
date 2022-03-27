// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:unicare/screens/Student/Questionnaire/questionnaire.dart';
import 'package:unicare/screens/Student/Report/report.dart';
import 'package:unicare/utils/colors.dart';

class StudentHome extends StatefulWidget {
  const StudentHome({Key? key}) : super(key: key);

  @override
  State<StudentHome> createState() => _StudentHomeState();
}

class _StudentHomeState extends State<StudentHome> {
  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 8),
        child: ListView(
          physics: const ClampingScrollPhysics(),
          children: [
            Container(
              margin: const EdgeInsets.only(left: 16, right: 16, top: 29),
              // color: Colors.blue[600],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 59,
                    width: 59,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/avatar-1.png'))),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Hello, Seth!",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: AppColors.textColor),
                  ),
                  const Text(
                    'How are you feeling today?',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: AppColors.subTextColor),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 120,
                    width: 380,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () => {
                            showDialog<String>(
                              context: context,
                              builder: (BuildContext context) =>
                                  const AlertDialog(
                                title: Text(
                                  '😀',
                                  style: TextStyle(fontSize: 40),
                                  textAlign: TextAlign.center,
                                ),
                                content: Text('Happy',
                                    style: TextStyle(fontSize: 16),
                                    textAlign: TextAlign.center),
                              ),
                            ),
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: const BoxDecoration(
                                  color: Color.fromRGBO(230, 230, 230, 1),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(5),
                                    topRight: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                  ),
                                ),
                                // color: Colors.grey,
                                child: const Center(
                                  child: Text(
                                    '😀',
                                    style: TextStyle(
                                        fontSize: 35,
                                        letterSpacing: 0,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              const Text('Happy')
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () => {
                            showDialog<String>(
                              context: context,
                              builder: (BuildContext context) =>
                                  const AlertDialog(
                                title: Text(
                                  '😰',
                                  style: TextStyle(fontSize: 40),
                                  textAlign: TextAlign.center,
                                ),
                                content: Text('Anxious',
                                    style: TextStyle(fontSize: 16),
                                    textAlign: TextAlign.center),
                              ),
                            ),
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: const BoxDecoration(
                                  color: Color.fromRGBO(230, 230, 230, 1),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(5),
                                    topRight: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                  ),
                                ),
                                // color: Colors.grey,
                                child: const Center(
                                  child: Text(
                                    '😰',
                                    style: TextStyle(
                                        fontSize: 35,
                                        letterSpacing: 0,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              const Text('Anxious')
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () => {
                            showDialog<String>(
                              context: context,
                              builder: (BuildContext context) =>
                                  const AlertDialog(
                                title: Text(
                                  '🥱',
                                  style: TextStyle(fontSize: 40),
                                  textAlign: TextAlign.center,
                                ),
                                content: Text('Bored',
                                    style: TextStyle(fontSize: 16),
                                    textAlign: TextAlign.center),
                              ),
                            ),
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: const BoxDecoration(
                                  color: Color.fromRGBO(230, 230, 230, 1),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(5),
                                    topRight: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                  ),
                                ),
                                // color: Colors.grey,
                                child: const Center(
                                  child: Text(
                                    '🥱',
                                    style: TextStyle(
                                        fontSize: 35,
                                        letterSpacing: 0,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              const Text('Bored')
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () => {
                            showDialog<String>(
                              context: context,
                              builder: (BuildContext context) =>
                                  const AlertDialog(
                                title: Text(
                                  '😔',
                                  style: TextStyle(fontSize: 40),
                                  textAlign: TextAlign.center,
                                ),
                                content: Text('Sad',
                                    style: TextStyle(fontSize: 16),
                                    textAlign: TextAlign.center),
                              ),
                            ),
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: const BoxDecoration(
                                  color: Color.fromRGBO(230, 230, 230, 1),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(5),
                                    topRight: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                  ),
                                ),
                                // color: Colors.grey,
                                child: const Center(
                                  child: Text(
                                    '😔',
                                    style: TextStyle(
                                        fontSize: 35,
                                        letterSpacing: 0,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              const Text('Sad')
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'What will you like to do?',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: AppColors.subTextColor),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Questionnaire(),
                            ),
                          ),
                        },
                        child: Container(
                          margin: EdgeInsets.fromLTRB(5, 0, 25, 0),
                          width: 156,
                          height: 403,
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                  // top: 0,
                                  // left: 0,
                                  child: Container(
                                      width: 156,
                                      height: 403,
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10),
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Color.fromRGBO(
                                                  0, 0, 0, 0.10000000149011612),
                                              offset: Offset(0, 1),
                                              blurRadius: 10)
                                        ],
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                      ))),
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                      width: 156,
                                      height: 403,
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10),
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10),
                                        ),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/therapist.png'),
                                            fit: BoxFit.cover),
                                      ))),
                              Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                  width: 156,
                                  height: 403,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color.fromRGBO(
                                              0, 0, 0, 0.10000000149011612),
                                          offset: Offset(0, 1),
                                          blurRadius: 10)
                                    ],
                                    gradient: LinearGradient(
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter,
                                      colors: [
                                        Colors.black.withOpacity(0.9),
                                        Colors.transparent
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 134,
                                left: 23,
                                child: Container(
                                  width: 109,
                                  height: 136,
                                  child: Stack(
                                    children: <Widget>[
                                      const Positioned(
                                          top: 0,
                                          left: 0,
                                          child: Text(
                                            'Find a\n Therapist',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1),
                                                fontFamily: 'Roboto',
                                                fontSize: 22,
                                                letterSpacing: 0,
                                                fontWeight: FontWeight.normal,
                                                height: 1),
                                          )),
                                      Positioned(
                                        top: 76,
                                        left: 25,
                                        child: Container(
                                          width: 60,
                                          height: 60,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/logos/doctor-icon.png'),
                                                fit: BoxFit.fitWidth),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      // SizedBox(width: 5),
                      GestureDetector(
                        onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ReportIssue(),
                            ),
                          ),
                        },
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                          width: 156,
                          height: 403,
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                // top: 0,
                                // left: 0,
                                child: Container(
                                  width: 156,
                                  height: 403,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color.fromRGBO(
                                              0, 0, 0, 0.10000000149011612),
                                          offset: Offset(0, 1),
                                          blurRadius: 10)
                                    ],
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                  width: 156,
                                  height: 403,
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/police.png'),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                  width: 156,
                                  height: 403,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color.fromRGBO(0, 0, 0, 0.1),
                                          offset: Offset(0, 1),
                                          blurRadius: 10)
                                    ],
                                    gradient: LinearGradient(
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter,
                                      colors: [
                                        Colors.black.withOpacity(0.9),
                                        Colors.transparent
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 134,
                                left: 23,
                                child: Container(
                                  width: 109,
                                  height: 136,
                                  child: Stack(
                                    children: <Widget>[
                                      const Positioned(
                                          top: 0,
                                          left: 0,
                                          child: Text(
                                            'Report a   \n Problem',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1),
                                                fontFamily: 'Roboto',
                                                fontSize: 22,
                                                letterSpacing:
                                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                                fontWeight: FontWeight.normal,
                                                height: 1),
                                          )),
                                      Positioned(
                                        top: 76,
                                        left: 25,
                                        child: Container(
                                          width: 60,
                                          height: 60,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/logos/police-icon.png'),
                                                fit: BoxFit.cover),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Container(),
          ],
        ),
      ),
    );
  }
}
