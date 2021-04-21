import 'package:DevQuiz/core/core.dart';
import 'package:flutter/material.dart';

class ProgressIndicatorWidget extends StatelessWidget {
  final double value;

  const ProgressIndicatorWidget({required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: LinearProgressIndicator(
        value: this.value,
        valueColor: AlwaysStoppedAnimation<Color>(
          AppColors.chartPrimary,
        ),
        backgroundColor: AppColors.chartSecondary,
      ),
    );
  }
}
