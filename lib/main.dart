import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {


  final _questions = const [
    {
      'question': 'How many days do we have in a week ?',
      'answers': [{'text':'5', 'score':0}, {'text':'6','score':0}, {'text':'7','score':1}, {'text':'8','score':0}]
    },
    {
      'question': 'How many days are there in a normal year?',
      'answers': [{'text':'363', 'score':0}, {'text':'364','score':0}, {'text':'365','score':1}, {'text':'366','score':0}]
    },
    {
      'question': 'How many colors are there in a rainbow?',
      'answers': [{'text':'5', 'score':0}, {'text':'6','score':0}, {'text':'7','score':1}, {'text':'8','score':0}]
    },
    {
      'question': 'Which animal is known as the ‘Ship of the Desert?',
      'answers': [{'text':'Lion', 'score':0}, {'text':'Camel','score':1}, {'text':'Tiger','score':0}, {'text':'Snake','score':0}]
    },
    {
      'question': 'How many letters are there in the English alphabet?',
      'answers': [{'text':'26', 'score':1}, {'text':'27','score':0}, {'text':'28','score':0}, {'text':'29','score':0}]
    },
    {
      'question': 'How many consonants are there in the English alphabet?',
      'answers': [{'text':'20', 'score':0}, {'text':'21','score':1}, {'text':'22','score':0}, {'text':'23','score':0}]
    },
    {
      'question': 'How many sides are there in a triangle?',
      'answers': [{'text':'1', 'score':0}, {'text':'2','score':0}, {'text':'3','score':1}, {'text':'4','score':0}]
    },
    {
      'question': 'Which month of the year has the least number of days?',
      'answers': [{'text':'January', 'score':0}, {'text':'February','score':1}, {'text':'March','score':0}, {'text':'April','score':0}]
    },
    {
      'question': 'How many vowels are there in the English alphabet ?',
      'answers': [{'text':'5', 'score':1}, {'text':'6','score':0}, {'text':'7','score':0}, {'text':'8','score':0}]
    },
    {
      'question': 'Which animal is called King of Jungle?',
      'answers': [{'text':'Dragon', 'score':0}, {'text':'Leopard','score':0}, {'text':'Tiger','score':0}, {'text':'Lion','score':1}]
    },
    {
      'question': 'Which are primary colours?',
      'answers': [{'text':'Red Yellow Blue', 'score':1}, {'text':'Red Green Blue','score':0}, {'text':'Blue Green Orange','score':0}, {'text':'Red White Blue','score':0}]
    },
    {
      'question': 'How many days are there in the month of February in a leap year?',
      'answers': [{'text':'28', 'score':0}, {'text':'29','score':1}, {'text':'30','score':0}, {'text':'31','score':0}]
    },
    {
      'question': 'Which is the largest animal in the world?',
      'answers': [{'text':'Blue whale', 'score':1}, {'text':'Lion','score':0}, {'text':'Tiger','score':0}, {'text':'Dragon','score':0}]
    },
    {
      'question': 'Which is the tallest animal on the earth?',
      'answers': [{'text':'Gorilla', 'score':0}, {'text':'Giraffe','score':1}, {'text':'Rat','score':0}, {'text':'Rabbit','score':0}]
    },
    {
      'question': 'Which festival is known as the festival of colors?',
      'answers': [{'text':'Dussehra', 'score':0}, {'text':'Pongal','score':0}, {'text':'Diwali','score':0}, {'text':'Holi','score':1}]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _questionAnswer(score) {

    
    _totalScore = _totalScore + score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < _questions.length)
      print(_questionIndex);
    else
      print('No more question');
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        ),
      home: Scaffold(
        backgroundColor: Colors.grey,
        //resizeToAvoidBottomPadding: true,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Kidos Quiz'),
        ),
        // body: Text('This is my default Text!'),
        body: SingleChildScrollView(
          child: _questionIndex < _questions.length
              ? Quiz(
              questions: _questions,
              questionIndex: _questionIndex,
              questionAnswer: _questionAnswer)
              : Result(_totalScore, _resetQuiz),
        ),
      ),
    );
  }
}
