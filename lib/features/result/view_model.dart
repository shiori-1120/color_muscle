import 'package:color_muscle/domain/color/repository.dart';
import 'package:color_muscle/features/top/grade_type.dart';
import 'package:color_muscle/features/top/page/top.dart';
import 'package:color_muscle/features/top/question_type.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:color_muscle/features/result_details/page/result_detail.dart';
import 'package:color_muscle/features/result/state.dart';
// 追加

part 'view_model.g.dart';

@riverpod
class ResultViewModel extends _$ResultViewModel {
  ColorRepo get colorRepo => ref.read(colorRepoProvider.notifier);
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
