// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:unicare/utils/colors.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class ReportIssue extends StatefulWidget {
  ReportIssue({Key? key}) : super(key: key);

  @override
  State<ReportIssue> createState() => _StudentSignInState();
}

class _StudentSignInState extends State<ReportIssue> {
  final number = '911';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Report An Issue',
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
            Align(
              alignment: Alignment(-0.83, 0),
              child: Text(
                "Services",
                style: TextStyle(
                    height: 1.2, fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Align(
              alignment: Alignment(-0.75, 0),
              child: Text(
                "Choose a report service",
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.subTextColor,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            //Police
            GestureDetector(
              onTap: () => {
                showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: Text(
                      'Police',
                      textAlign: TextAlign.center,
                    ),
                    content: Text('Should we continue to call the Police?',
                        style: TextStyle(fontSize: 16),
                        textAlign: TextAlign.center),
                    actions: <Widget>[
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: AppColors.secondaryColor2,
                          padding: const EdgeInsets.fromLTRB(25, 8, 25, 8),
                          primary: Colors.white,
                          textStyle: const TextStyle(fontSize: 20),
                        ),
                        onPressed: () => Navigator.pop(context),
                        child: Text(
                          'No',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 120,
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: AppColors.primaryColor,
                          padding: const EdgeInsets.fromLTRB(25, 8, 25, 8),
                          primary: Colors.white,
                          textStyle: const TextStyle(fontSize: 20),
                        ),
                        onPressed: () async {
                          FlutterPhoneDirectCaller.callNumber(number);
                        },
                        child: Text(
                          'Yes',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 10, 30, 20),
                child: Container(
                  margin: EdgeInsets.all(0),
                  height: 150,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset('assets/images/police.png',
                                fit: BoxFit.cover)),
                      ),
                      Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
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
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Image.asset(
                                'assets/logos/police-icon.png',
                                height: 50,
                                width: 40,
                              ),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              'Police',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

            //Ambulance
            GestureDetector(
              onTap: () => {
                showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: Text(
                      'Ambulance',
                      textAlign: TextAlign.center,
                    ),
                    content: Text('Should we continue to call the ambulance?',
                        style: TextStyle(fontSize: 16),
                        textAlign: TextAlign.center),
                    actions: <Widget>[
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: AppColors.secondaryColor2,
                          padding: const EdgeInsets.fromLTRB(25, 8, 25, 8),
                          primary: Colors.white,
                          textStyle: const TextStyle(fontSize: 20),
                        ),
                        onPressed: () => Navigator.pop(context),
                        child: Text(
                          'No',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 120,
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: AppColors.primaryColor,
                          padding: const EdgeInsets.fromLTRB(25, 8, 25, 8),
                          primary: Colors.white,
                          textStyle: const TextStyle(fontSize: 20),
                        ),
                        onPressed: () async {
                          FlutterPhoneDirectCaller.callNumber(number);
                        },
                        child: Text(
                          'Yes',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 10, 30, 20),
                child: Container(
                  margin: EdgeInsets.all(0),
                  height: 150,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset('assets/images/Ambulance.png',
                                fit: BoxFit.cover)),
                      ),
                      Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
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
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Image.asset(
                                'assets/logos/ambulance.png',
                                height: 50,
                                width: 40,
                              ),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              'Ambulance',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

            //Fire Service
            GestureDetector(
              onTap: () => {
                showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: Text(
                      'Fire Service',
                      textAlign: TextAlign.center,
                    ),
                    content: Text(
                        'Should we continue to call the Fire Service?',
                        style: TextStyle(fontSize: 16),
                        textAlign: TextAlign.center),
                    actions: <Widget>[
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: AppColors.secondaryColor2,
                          padding: const EdgeInsets.fromLTRB(25, 8, 25, 8),
                          primary: Colors.white,
                          textStyle: const TextStyle(fontSize: 20),
                        ),
                        onPressed: () => Navigator.pop(context),
                        child: Text(
                          'No',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 120,
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: AppColors.primaryColor,
                          padding: const EdgeInsets.fromLTRB(25, 8, 25, 8),
                          primary: Colors.white,
                          textStyle: const TextStyle(fontSize: 20),
                        ),
                        onPressed: () async {
                          FlutterPhoneDirectCaller.callNumber(number);
                        },
                        child: Text(
                          'Yes',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 10, 30, 20),
                child: Container(
                  margin: EdgeInsets.all(0),
                  height: 150,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset('assets/images/Fireservice.png',
                                fit: BoxFit.cover)),
                      ),
                      Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
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
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Image.asset(
                                'assets/logos/fire-truck.png',
                                height: 50,
                                width: 40,
                              ),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              'Fire Service',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
