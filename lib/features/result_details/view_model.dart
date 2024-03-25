import 'package:color_muscle/domain/color/repository.dart';
import 'package:color_muscle/features/result/page/result.dart';
import 'package:color_muscle/features/top/grade_type.dart';
import 'package:color_muscle/features/top/question_type.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:color_muscle/features/result_details/state.dart';
// 追加

part 'view_model.g.dart';

@riverpod
class ResultDetailViewModel extends _$ResultDetailViewModel {
  ColorRepo get colorRepo => ref.read(colorRepoProvider.notifier);
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
