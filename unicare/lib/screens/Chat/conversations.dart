// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:unicare/utils/colors.dart';

class ConversationScreen extends StatefulWidget {
  const ConversationScreen({Key? key}) : super(key: key);

  @override
  State<ConversationScreen> createState() => _StudentSignInState();
}

class _StudentSignInState extends State<ConversationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Conversations',
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
      body: SafeArea(
        child: SingleChildScrollView(
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
                  "Messages",
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
                  "Here are your patients",
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.subTextColor,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.all(05),
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                // color: Colors.blue,
                child: Expanded(
                  child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/avatar.png'),
                        ),
                        title: Text('Seth Addo'),
                        subtitle: Text(
                            'Lorem ipsum delor sit amet, conseclehur daruos bleoi...'),
                        trailing: Column(
                          children: const [
                            Text('12:43'),
                            CircleAvatar(
                              backgroundColor: AppColors.secondaryColor2,
                              radius: 8,
                              child: Text(
                                '2',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                            )
                          ],
                        ),
                        dense: true,
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
