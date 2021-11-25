import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  final int questionIndex;
  final int totalQuestionIndex;

  Question(this.questionText, this.questionIndex, this.totalQuestionIndex);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.only(top: 15),
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.3),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15))),
        // margin: EdgeInsets.only(top: 40, bottom: 20, left: 20, right: 20),
        child: Column(children: [
          Text(
            'Question ${questionIndex + 1} of $totalQuestionIndex: ',
            style: TextStyle(
              fontSize: 16, fontFamily: 'ERKN', color: Colors.white,
              // fontWeight: FontWeight.w200
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Text(
              questionText,
              style: TextStyle(
                fontSize: 26, fontFamily: 'ERKN', color: Colors.white,
                // fontWeight: FontWeight.w200
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 10),
        ]));
  }
}
