import 'dart:io';
import 'Math.dart';

void main(){
  List<MathQuestion> questions = [
    MathQuestion(question: "10 * 80", answer: 800),
    MathQuestion(question: "10 + 80", answer: 90),
    MathQuestion(question: "10 - 80", answer: -70),
    MathQuestion(question: "10 / 80", answer: 0.125),
    MathQuestion(question: "10 % 80", answer: 10),
  ];
  int countCorrect = 0;
  int countWrong = 0;
  String corrects = "";
  String wrongs = "";
  int index = 1;
  for(MathQuestion question in questions){
    double? answer = userAnswer(question.question, index);
    while(answer == null){
      answer = userAnswer(question.question, index);
    }
    if (answer==question.answer) {
      print("That Correct!\nVery Good!! :) ");
      countCorrect += 1;
      corrects += "${question.question} = ${answer}\n";
    }else{
      print("Wrong Answer :( ");
      countWrong+=1;
      wrongs+= "${question.question} =/= ${answer} Correct answer in ${question.answer}\n";
    }
    ++index;
  }
  print("\n\nCorrect Answers: $countCorrect\n$corrects\nWrong Answers: $countWrong\n$wrongs");
  /*for (int i=0; i<correctQuestions.length||i<wrongQuestions.length;i++){
    print("Correct Answers: $countCorrect\nWrong Answers: $countWrong");
  }*/

}

double? userAnswer(String question, int index){
  print('Q$index: $question = ?');
  double? answer;
  answer = double.tryParse(stdin.readLineSync()!);
  return answer;
}