import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hbd_2/birthday_data.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore <= 75) {
      resultText =
          'Otak lu kagak pinter pinter \n score:' + resultScore.toString();
    } else if (resultScore <= 110) {
      resultText = 'Haduuuu.. \n score:' + resultScore.toString();
    } else if (resultScore <= 135) {
      resultText = 'Boleh Laaa \n score:' + resultScore.toString();
    } else if (resultScore <= 160) {
      resultText = 'Woww Woow Wooww!! \n score:' + resultScore.toString();
    } else if (resultScore <= 190) {
      resultText = 'kamu lebih dari WOW \n score:' + resultScore.toString();
    } else {
      resultText = 'ELU EMANG $birthdayName\'s BEST FRIEND! \n score:' +
          resultScore.toString();
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Center(
      child: Column(children: <Widget>[
        SizedBox(height: mediaQuery.size.height * 0.1),
        Image.asset(
          quizResultPicture,
          height: mediaQuery.size.height * 0.3,
        ),
        Container(
          margin: EdgeInsets.all(35),
          // padding: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.white60),
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(15)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 50, right: 50),
                    child: Text(
                      resultPhrase,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 34,
                          fontFamily: 'Roboto'),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: mediaQuery.size.height * 0.05),
                  ElevatedButton(
                    onPressed: resetHandler,
                    child: Text(
                      'Restart Quiz!',
                    ),
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(16),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        textStyle: const TextStyle(
                            fontSize: 28, fontFamily: 'Roboto-light'),
                        primary: Color(0xFFDD2C00),
                        onPrimary: Colors.white),
                  ),
                  SizedBox(height: 40)
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
