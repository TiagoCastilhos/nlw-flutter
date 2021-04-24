import 'package:DevQuiz/core/app_images.dart';
import 'package:DevQuiz/home/home_repository.dart';
import 'package:DevQuiz/home/home_state.dart';
import 'package:DevQuiz/shared/enums/level_enum.dart';
import 'package:DevQuiz/shared/models/answer_model.dart';
import 'package:DevQuiz/shared/models/question_model.dart';
import 'package:DevQuiz/shared/models/quiz_model.dart';
import 'package:DevQuiz/shared/models/user_model.dart';
import 'package:flutter/foundation.dart';

class HomeController {
  final ValueNotifier<HomeState> stateNotifier =
      ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  final repository = HomeRepository();

  void fillData() async {
    state = HomeState.loading;
    quizzes = await repository.getQuizzes();
    user = await repository.getUser();
    state = HomeState.success;
  }

  Future _fillUser() async {
    await Future.delayed(
      Duration(
        seconds: 2,
      ),
    );

    user = UserModel(
      name: "Tiago",
      imageUrl: "",
    );
  }

  Future _fillQuizzes() async {
    await Future.delayed(
      Duration(
        seconds: 2,
      ),
    );

    quizzes = [
      QuizModel(
        title: "NLW 5 Flutter",
        questions: [
          QuestionModel(
            title: "Está curtindo o Flutter?",
            answers: [
              AnswerModel(
                title: "Estou curtindo",
              ),
              AnswerModel(
                title: "Amando",
              ),
              AnswerModel(
                title: "Show de bola",
              ),
              AnswerModel(
                title: "Muito top",
                isRight: true,
              ),
            ],
          ),
          QuestionModel(
            title: "Está curtindo o Flutter?",
            answers: [
              AnswerModel(
                title: "Estou curtindo",
              ),
              AnswerModel(
                title: "Amando",
              ),
              AnswerModel(
                title: "Show de bola",
              ),
              AnswerModel(
                title: "Muito top",
                isRight: true,
              ),
            ],
          ),
          QuestionModel(
            title: "Está curtindo o Flutter?",
            answers: [
              AnswerModel(
                title: "Estou curtindo",
              ),
              AnswerModel(
                title: "Amando",
              ),
              AnswerModel(
                title: "Show de bola",
              ),
              AnswerModel(
                title: "Muito top",
                isRight: true,
              ),
            ],
          ),
          QuestionModel(
            title: "Está curtindo o Flutter?",
            answers: [
              AnswerModel(
                title: "Estou curtindo",
              ),
              AnswerModel(
                title: "Amando",
              ),
              AnswerModel(
                title: "Show de bola",
              ),
              AnswerModel(
                title: "Muito top",
                isRight: true,
              ),
            ],
          ),
        ],
        image: AppImages.blocks,
        level: Level.facil,
      ),
    ];
  }
}
