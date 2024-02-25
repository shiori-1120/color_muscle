import 'package:color_muscle/components/primary_butten.dart';
import 'package:color_muscle/features/question/page/question.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:color_muscle/features/top/view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TopButton extends ConsumerWidget {
  const TopButton(
    this.questionNumber,
    this.questionFormat,
    this.questionGrade, {
    super.key,
  });

  final String questionNumber;
  final String questionFormat;
  final String questionGrade;

  @override
  Widget build(BuildContext context, WidgetRef ref) => PrimaryButton(
        onPressed: () async {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const QuestionPage()));
        },
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.07,
        text: '問題を始める',
      );
}
