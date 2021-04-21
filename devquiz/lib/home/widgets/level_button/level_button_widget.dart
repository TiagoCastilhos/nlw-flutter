import 'package:DevQuiz/core/core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LevelButtonWidget extends StatelessWidget {
  final String label;
  final Color textColor;

  LevelButtonWidget._({required this.label, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border.fromBorderSide(
          BorderSide(color: AppColors.border),
        ),
        borderRadius: BorderRadius.circular(28),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 6,
        ),
        child: Text(
          label,
          style: GoogleFonts.notoSans(
            color: this.textColor,
            fontSize: 13,
          ),
        ),
      ),
    );
  }

  static LevelButtonWidget facilButton() {
    return LevelButtonWidget._(
      label: "Fácil",
      textColor: AppColors.levelButtonTextFacil,
    );
  }

  static LevelButtonWidget medioButton() {
    return LevelButtonWidget._(
      label: "Médio",
      textColor: AppColors.levelButtonTextMedio,
    );
  }

  static LevelButtonWidget dificilButton() {
    return LevelButtonWidget._(
      label: "Difícil",
      textColor: AppColors.levelButtonTextDificil,
    );
  }

  static LevelButtonWidget peritoButton() {
    return LevelButtonWidget._(
      label: "Perito",
      textColor: AppColors.levelButtonTextPerito,
    );
  }
}
