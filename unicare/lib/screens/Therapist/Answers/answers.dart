// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:unicare/utils/colors.dart';

class Answers extends StatefulWidget {
  const Answers({Key? key}) : super(key: key);

  @override
  State<Answers> createState() => _StudentSignInState();
}

class _StudentSignInState extends State<Answers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Answers',
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
              alignment: Alignment(-0.75, 0),
              child: Text(
                "Preliminary Answers",
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
                "These are the answers collected\n from the students",
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.subTextColor,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.all(20),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.65,
              // color: Colors.blue,
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          title: Row(
                            children: const [
                              CircleAvatar(
                                radius: 5,
                                backgroundColor: AppColors.secondaryColor2,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Full Name',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          subtitle: Text('\t\t\t\t\tSeth Addo'),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: AppColors.primaryColor,
                            padding: const EdgeInsets.fromLTRB(25, 8, 25, 8),
                            primary: Colors.white,
                            textStyle: const TextStyle(fontSize: 20),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Decline',
                          ),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: AppColors.secondaryColor1,
                            padding: const EdgeInsets.fromLTRB(25, 8, 25, 8),
                            primary: Colors.white,
                            textStyle: const TextStyle(fontSize: 20),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Accept',
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
