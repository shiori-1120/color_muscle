import 'package:mottaina_eat/domain/quiz/domain.dart';
import 'package:mottaina_eat/domain/quiz/repository.dart';
import 'package:mottaina_eat/features/question/page/question.dart';
import 'package:mottaina_eat/features/top/grade_type.dart';
import 'package:mottaina_eat/features/top/question_type.dart';
import 'package:mottaina_eat/features/top/state.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
// 追加

part 'view_model.g.dart';

@riverpod
class TopViewModel extends _$TopViewModel {
  QuizRepo get colorRepo => ref.read(quizRepoProvider.notifier);
  @override
  FutureOr<TopState> build() async {
    const questionNumber = 1;
    const questionType = QuestionType.originToColor;
    const gradeType = GradeType.gradeThird;
    const state = TopState(
        questionNumber: questionNumber,
        questionType: questionType,
        gradeType: gradeType);
    return state;
  }

  // final List<ColorClass> colors =
  //     await colorRepo.getColorWithGradeFilter('1');

  Future<void> changeQuestionTypeRight(QuestionType questionType) async {
    if (questionType == QuestionType.colorToName) {
      state = AsyncData(
          state.requireValue.copyWith(questionType: QuestionType.nameToColor));
    } else if (questionType == QuestionType.nameToColor) {
      state = AsyncData(state.requireValue
          .copyWith(questionType: QuestionType.originToColor));
    } else if (questionType == QuestionType.originToColor) {
      state = AsyncData(
          state.requireValue.copyWith(questionType: QuestionType.colorToName));
    }
  }

  Future<void> changeQuestionTypeLeft(QuestionType questionType) async {
    if (questionType == QuestionType.colorToName) {
      state = AsyncData(state.requireValue
          .copyWith(questionType: QuestionType.originToColor));
    } else if (questionType == QuestionType.nameToColor) {
      state = AsyncData(
          state.requireValue.copyWith(questionType: QuestionType.colorToName));
    } else if (questionType == QuestionType.originToColor) {
      state = AsyncData(
          state.requireValue.copyWith(questionType: QuestionType.nameToColor));
    }
  }

  Future<void> upGradeType(GradeType gradeType) async {
    if (gradeType == GradeType.gradeThird) {
      state =
          AsyncData(state.requireValue.copyWith(gradeType: GradeType.gradeTwo));
    } else if (gradeType == GradeType.gradeTwo) {
      state =
          AsyncData(state.requireValue.copyWith(gradeType: GradeType.gradeOne));
    }
  }

  Future<void> downGradeTypeRight(GradeType gradeType) async {
    if (gradeType == GradeType.gradeOne) {
      state =
          AsyncData(state.requireValue.copyWith(gradeType: GradeType.gradeTwo));
    } else if (gradeType == GradeType.gradeTwo) {
      state = AsyncData(
          state.requireValue.copyWith(gradeType: GradeType.gradeThird));
    }
  }

  Future<void> incrementQuestionNumber(int questionNumber) async {
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
          questionNumber: state.value!.questionNumber - 1,
        ),
      );
    }
  }

  Future<void> navigateToQuestionPage(BuildContext context, int questionNumber,
      QuestionType questionType, GradeType gradeType) async {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => QuestionPage()),
    );
  }
}
