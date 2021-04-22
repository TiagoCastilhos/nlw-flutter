import 'package:DevQuiz/home/home_controller.dart';
import 'package:DevQuiz/home/widgets/appbar/app_bar_widget.dart';
import 'package:DevQuiz/home/widgets/level_button/level_button_widget.dart';
import 'package:DevQuiz/home/widgets/quiz_card/quiz_card_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        user: controller.user!,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LevelButtonWidget.facilButton(),
                LevelButtonWidget.medioButton(),
                LevelButtonWidget.dificilButton(),
                LevelButtonWidget.peritoButton(),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Expanded(
              child: GridView.count(
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                crossAxisCount: 2,
                children: [
                  controller.quizzes!.map((e) => QuizCardWidget()).toList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
