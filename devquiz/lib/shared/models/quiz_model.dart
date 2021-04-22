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
}
