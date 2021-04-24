import 'dart:convert';
import 'package:DevQuiz/shared/enums/level_enum.dart';
import 'package:DevQuiz/shared/models/question_model.dart';

class QuizModel {
  final String title;
  final List<QuestionModel> questions;
  final int answeredQuestions;
  final String image;
  final Level level;

  QuizModel({
    required this.title,
    required this.questions,
    this.answeredQuestions = 0,
    required this.image,
    required this.level,
  }) : assert(questions.length == 4);

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'questions': questions.map((x) => x.toMap()).toList(),
      'answeredQuestions': answeredQuestions,
      'image': image,
      'level': level.parse(),
    };
  }

  factory QuizModel.fromMap(Map<String, dynamic> map) {
    return QuizModel(
      title: map['title'],
      questions: List<QuestionModel>.from(
          map['questions']?.map((x) => QuestionModel.fromMap(x))),
      answeredQuestions: map['answeredQuestions'],
      image: map['image'],
      level: map['level'].toString().levelParse(),
    );
  }

  String toJson() => json.encode(toMap());

  factory QuizModel.fromJson(String source) =>
      QuizModel.fromMap(json.decode(source));
}
