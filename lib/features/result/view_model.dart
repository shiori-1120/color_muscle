import 'package:mottaina_eat/domain/quiz/repository.dart';
import 'package:mottaina_eat/features/top/grade_type.dart';
import 'package:mottaina_eat/features/top/page/top.dart';
import 'package:mottaina_eat/features/top/question_type.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:mottaina_eat/features/result_details/page/result_detail.dart';
import 'package:mottaina_eat/features/result/state.dart';
// 追加

part 'view_model.g.dart';

@riverpod
class ResultViewModel extends _$ResultViewModel {
  QuizRepo get colorRepo => ref.read(quizRepoProvider.notifier);
  @override
  FutureOr<ResultState> build() async {
    const state = ResultState(
        questionNumber: 3,
        questionType: QuestionType.originToColor,
        gradeType: GradeType.gradeThird);
    return state;
  }

  Future<void> navigateToResultDetailPage(BuildContext context) async {
    await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ResultDetailPage()),
    );
  }

    Future<void> navigateToTopPage(BuildContext context) async {
    await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const TopPage()),
    );
  }
}
