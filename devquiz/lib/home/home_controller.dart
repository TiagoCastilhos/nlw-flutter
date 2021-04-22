import 'package:DevQuiz/core/app_images.dart';
import 'package:DevQuiz/home/home_state.dart';
import 'package:DevQuiz/shared/enums/level_enum.dart';
import 'package:DevQuiz/shared/models/answer_model.dart';
import 'package:DevQuiz/shared/models/question_model.dart';
import 'package:DevQuiz/shared/models/quiz_model.dart';
import 'package:DevQuiz/shared/models/user_model.dart';

class HomeController {
  HomeState state = HomeState.empty;

  UserModel? user;
  List<QuizModel>? quizzes;

  HomeController() {
    fillUser();
    fillQuizzes();
  }

  void fillUser() {
    user = UserModel(
      name: "Tiago",
      imageUrl:
          "https://styles.redditmedia.com/t5_2b7d7n/styles/profileIcon_ljxy8mzxup361.jpg?width=256&height=256&crop=256:256,smart&s=6de4c1faa82a65b582938e9c7264b88ba45542db",
    );
  }

  void fillQuizzes() {
    quizzes = [
      QuizModel(
        title: "NLW 5 Flutter",
        questions: [
          QuestionModel(
            title: "Está curtindo o Flutter",
            answers: [
              AnswerModel(title: "Estou curtindo"),
              AnswerModel(title: "Amando"),
              AnswerModel(title: "Show de bola"),
              AnswerModel(
                title: "Muito top",
                isRight: true,
              ),
            ],
          )
        ],
        image: AppImages.blocks,
        level: Level.facil,
      ),
    ];
  }
}
