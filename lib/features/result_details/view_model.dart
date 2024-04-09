import 'package:mottaina_eat/domain/quiz/repository.dart';
import 'package:mottaina_eat/features/result/page/result.dart';
import 'package:mottaina_eat/features/top/grade_type.dart';
import 'package:mottaina_eat/features/top/question_type.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:mottaina_eat/features/result_details/state.dart';
// 追加

part 'view_model.g.dart';

@riverpod
class ResultDetailViewModel extends _$ResultDetailViewModel {
  QuizRepo get colorRepo => ref.read(quizRepoProvider.notifier);
  @override
  FutureOr<ResultDetailState> build() async {
    const state = ResultDetailState(
        questionNumber: 3,
        questionType: QuestionType.originToColor,
        gradeType: GradeType.gradeThird);
    return state;
  }

  Future<void> navigateToResultPage(BuildContext context) async {
    await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ResultPage()),
    );
  }
}
