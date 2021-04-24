import 'dart:convert';

import 'package:DevQuiz/shared/models/quiz_model.dart';
import 'package:DevQuiz/shared/models/user_model.dart';
import 'package:flutter/services.dart';

class HomeRepository {
  Future<UserModel> getUser() async {
    final rawUser = await rootBundle.loadString("assets/database/user.json");

    return UserModel.fromJson(rawUser);
  }

  Future<List<QuizModel>> getQuizzes() async {
    final rawQuizzes =
        await rootBundle.loadString("assets/database/quizzes.json");

    final list = jsonDecode(rawQuizzes) as List;

    return list.map((e) => QuizModel.fromMap(e)).toList();
  }
}
