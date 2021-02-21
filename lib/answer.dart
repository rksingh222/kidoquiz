import 'package:flutter/material.dart';


class Answer extends StatelessWidget {

  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler,this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 0.0,horizontal: 10),
      child: RaisedButton(
        onPressed: selectHandler,
        child: Text(this.answerText),
        color: Colors.blue,
        textColor: Colors.white,
      ),
    );
  }
}
