import 'package:flutter/material.dart';
import 'package:unicare/utils/colors.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: Column(
        children: [
          Container(
            height: 40,
            padding: const EdgeInsets.only(top: 1, left: 12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: const Border(
                  bottom: BorderSide(color: AppColors.subTextColor),
                  top: BorderSide(color: AppColors.subTextColor),
                  left: BorderSide(color: AppColors.subTextColor),
                  right: BorderSide(color: AppColors.subTextColor),
                )),
            child: MaterialButton(
              // minWidth: double.infinity,
              minWidth: double.infinity,
              highlightColor: AppColors.secondaryColor2,
              height: 35,
              onPressed: selectHandler,
              color: Colors.white,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                answerText,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }
}
