import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      width: 300,
      margin: EdgeInsets.all(8),
      // ignore: deprecated_member_use
      child: RaisedButton(
        elevation: 0,
        splashColor: Colors.indigo,
        highlightColor: Colors.blue.withOpacity(0.6),
        color: Colors.transparent,
        padding: EdgeInsets.only(top: 15, bottom: 15, left: 10, right: 10),
        textColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(color: Colors.white70, width: 1)),
        child: Text(
          answerText,
          maxLines: 5,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 22,
            fontFamily: 'ERKN',
            fontWeight: FontWeight.w100,
          ),
        ),
        onPressed: selectHandler,
      ),
    );
  }
}
