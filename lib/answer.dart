import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  Function action;
  String answerText;

  Answer(this.action, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      child: RaisedButton(
        color: Colors.blue,
        child: Text(answerText, style: TextStyle(color: Colors.white),),
        onPressed: action,
      ),
    );
  }
}
