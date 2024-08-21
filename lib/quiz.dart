import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz/questions_Screen.dart';
import 'package:quiz/start_Screen.dart';
import 'package:quiz/data/question.dart';
import 'package:quiz/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'Start-Screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-Screen';
    });
  }

  void pickAnswers(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results-Screen';
      });
    }
  }

  void restartQuiz(){
    setState(() {
      selectedAnswers=[];
      activeScreen= 'questions-Screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);
  
   if(activeScreen=='questions-Screen'){
  screenWidget = QuestionsScreen(onSelectAnswer: pickAnswers,); 
}
   if(activeScreen=='results-Screen'){
    screenWidget= ResultsScreen(chosenAnswers:selectedAnswers,
    onRestart: restartQuiz);
   }
  

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 73, 5, 85),
                Color.fromARGB(255, 103, 4, 121)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
