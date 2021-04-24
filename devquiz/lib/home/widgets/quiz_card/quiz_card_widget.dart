import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/shared/widgets/progress_indicator/progress_indicator_widget.dart';
import 'package:flutter/material.dart';

class QuizCardWidget extends StatelessWidget {
  final String title;
  final int answered;
  final int total;

  QuizCardWidget({
    required this.title,
    required this.answered,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border.fromBorderSide(
          BorderSide(
            color: AppColors.border,
          ),
        ),
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          bottom: 10,
          left: 20,
          right: 20,
          top: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 40,
              width: 40,
              child: Image.asset(AppImages.blocks),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              this.title,
              style: AppTextStyles.heading15,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    "${this.answered}/${this.total}",
                    style: AppTextStyles.body11,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: ProgressIndicatorWidget(
                    value: this.answered / this.total,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
