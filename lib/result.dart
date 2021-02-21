import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);



  String get resultPhrase {
    var resultText = 'You Score is ' + resultScore.toString() + ' out of 15';
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: Text(
              resultPhrase,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              //textAlign: TextAlign.center,
            ),
          ),
          FlatButton(
              onPressed: resetHandler,
              child: Text(
                'Reset Quiz',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ))
        ],
      ),
    );
  }
}
