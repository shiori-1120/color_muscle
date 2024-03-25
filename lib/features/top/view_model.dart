import 'package:color_muscle/domain/color/domain.dart';
import 'package:color_muscle/domain/color/repository.dart';
import 'package:color_muscle/features/question/page/question.dart';
import 'package:color_muscle/features/top/grade_type.dart';
import 'package:color_muscle/features/top/question_type.dart';
import 'package:color_muscle/features/top/state.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
// 追加

part 'view_model.g.dart';

@riverpod
class TopViewModel extends _$TopViewModel {
  ColorRepo get colorRepo => ref.read(colorRepoProvider.notifier);
  @override
  FutureOr<TopState> build() async {
    const state = TopState(
        questionNumber: 3,
        questionType: QuestionType.originToColor,
        gradeType: GradeType.gradeThird);
    return state;
  }

  Future<void> changeQuestionType(QuestionType questionType) async {
    final List<ColorClass> colors =
        await colorRepo.getColorWithGradeFilter('1');
    state = AsyncData(state.requireValue.copyWith(questionType: questionType));
  }

  void incrementQuestionNumber(int questionNumber) {
    if (state.value!.questionNumber < 5) {
      state = AsyncData(
        state.requireValue.copyWith(
          questionNumber: state.value!.questionNumber + 1,
        ),
      );
    }
  }

  Future<void> decrementQuestionNumber(int questionNumber) async {
    if (state.value!.questionNumber > 1) {
      state = AsyncData(
        state.requireValue.copyWith(
          questionNumber: state.value!.questionNumber-1,
        ),
      );
    }
  }

  Future<void> navigateToQuestionPage(BuildContext context)async{
    await Navigator.push(
              context, MaterialPageRoute(builder: (context) => QuestionPage()),);  
  }
}
