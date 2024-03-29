import 'package:color_muscle/components/primary_button.dart';
import 'package:color_muscle/features/top/grade_type.dart';
import 'package:color_muscle/features/top/question_type.dart';
import 'package:color_muscle/features/top/view_model.dart';
import 'package:color_muscle/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TopButton extends ConsumerWidget {
    final int questionNumber;
  final QuestionType questionType;
  final GradeType gradeType;

  const TopButton({
required this.questionNumber,
      required this.questionType,
      required this.gradeType,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) => PrimaryButton(
        onPressed: () => ref.read(topViewModelProvider.notifier).navigateToQuestionPage(context,questionNumber,questionType,gradeType),
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.07,
        text: '問題を始める',
        borderRaius: 40,
        backgroundColor: ColorName.greyBase,
        textColor: ColorName.black2,
      );
}
