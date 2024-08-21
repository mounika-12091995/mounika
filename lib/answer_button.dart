import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget{
  const AnswerButton(this.answerText,this.onTap,{super.key});

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(context){
    return ElevatedButton(
            onPressed: onTap,
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(174, 241, 36, 224),
              foregroundColor: Colors.amber,
            ),
            child:  Text(answerText,textAlign: TextAlign.center,),
          );
  }
}