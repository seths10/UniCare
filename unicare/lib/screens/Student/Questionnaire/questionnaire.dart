import 'package:flutter/material.dart';
import 'package:unicare/screens/Student/Questionnaire/answer.dart';
import 'package:unicare/screens/Student/Questionnaire/questions.dart';
import 'package:unicare/utils/colors.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

class Questionnaire extends StatefulWidget {
  const Questionnaire({Key? key}) : super(key: key);

  @override
  State<Questionnaire> createState() => _QuestionnaireState();
}

class _QuestionnaireState extends State<Questionnaire> {
  final questions = [
    {
      'questionText': 'How old are you?',
      'answers': ['15-18', '19-24', '25-30', '30+'],
    },
    {
      'questionText': 'What do you want to talk about',
      'answers': ['Fornication', 'Drugs', 'Pregnancy', 'school life'],
    },
    {
      'questionText': 'How old are you?',
      'answers': ['15-18', '19-24', '25-30', '30+'],
    },
    {
      'questionText': 'How old are you?',
      'answers': ['15-18', '19-24', '25-30', '30+'],
    },
    {
      'questionText': 'How old are you?',
      'answers': ['15-18', '19-24', '25-30', '30+'],
    },
    {
      'questionText': 'How old are you?',
      'answers': ['15-18', '19-24', '25-30', '30+'],
    },
    {
      'questionText': 'What do you want to talk about',
      'answers': ['Fornication', 'Drugs', 'Pregnancy', 'school life'],
    },
    {
      'questionText': 'How old are you?',
      'answers': ['15-18', '19-24', '25-30', '30+'],
    },
    {
      'questionText': 'How old are you?',
      'answers': ['15-18', '19-24', '25-30', '30+'],
    },
    {
      'questionText': 'How old are you?',
      'answers': ['15-18', '19-24', '25-30', '30+'],
    },
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Find A Therapist',
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
      body: _questionIndex < questions.length
          ? SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  const SizedBox(
                    height: 20,
                  ),
                  const Align(
                    alignment: Alignment(-0.6, 0),
                    child: Text(
                      "Preliminary evaluation",
                      style: TextStyle(
                          height: 1.2,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Align(
                    alignment: Alignment(-0.7, 0),
                    child: Text(
                      "Please answer these questions",
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.subTextColor,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: AppColors.subTextColor),
                        top: BorderSide(color: AppColors.subTextColor),
                        left: BorderSide(color: AppColors.subTextColor),
                        right: BorderSide(color: AppColors.subTextColor),
                      ),
                    ),
                    child: LinearProgressBar(
                      maxSteps: questions.length,
                      progressType: LinearProgressBar.progressTypeLinear,
                      currentStep: _questionIndex,
                      progressColor: AppColors.secondaryColor1,
                      backgroundColor: Colors.white,
                      valueColor: const AlwaysStoppedAnimation<Color>(
                          AppColors.secondaryColor1),
                      semanticsLabel: "Label",
                      semanticsValue: "Value",
                      minHeight: 10,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                    width: width * 0.9,
                    height: height * 0.25,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(230, 230, 230, 1),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      ),
                    ),
                    child: Center(
                      child: Question(
                        questions[_questionIndex]['questionText'] as String,
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList(),
                  const SizedBox(height: 20),
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
                          child: const Text(
                            'Previous',
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
                          child: const Text(
                            'Next',
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          : const Center(
              child: Text('Your answers has been submitted'),
            ),
    );
  }
}
