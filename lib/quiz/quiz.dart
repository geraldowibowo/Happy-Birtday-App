import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import 'package:hbd_2/birthday_data.dart';
import 'dart:ui';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz(
      {required this.questions,
      required this.answerQuestion,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return SingleChildScrollView(
      child: Column(children: [
        SizedBox(height: 20),
        Container(
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.white70),
            borderRadius: BorderRadius.circular(15),
            color: Colors.white.withOpacity(0.1),
          ),
          margin: EdgeInsets.all(mediaQuery.size.height * 0.05),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Question(
                        questions[questionIndex]['questionText'].toString(),
                        questionIndex,
                        questions.length),
                    Container(
                      alignment: Alignment.centerLeft,
                      width: mediaQuery.size.width * 0.8,
                      color: Colors.transparent,
                      child: Container(
                          alignment: Alignment.centerLeft,
                          height: 2,
                          color: Colors.white70,
                          width: mediaQuery.size.width *
                              0.8 *
                              (questionIndex + 1) /
                              questions.length),
                    ),
                    SizedBox(height: mediaQuery.size.height * 0.01),
                    ...(questions[questionIndex]['answers']
                            as List<Map<String, Object>>)
                        .map((answer) {
                      return Answer(() => answerQuestion(answer['score']),
                          answer['text'].toString());
                    }).toList(),
                    SizedBox(height: mediaQuery.size.height * 0.01),
                  ],
                ),
              ),
            ),
          ),
        ),
        Image.asset(
          quizPicture,
          height: mediaQuery.size.height * 0.3,
        ),
      ]),
    );
  }
}
