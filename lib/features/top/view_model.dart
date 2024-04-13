import 'package:mottaina_eat/domain/quiz/repository.dart';
import 'package:mottaina_eat/features/question/page/question.dart';
import 'package:mottaina_eat/features/top/state.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
// 追加

part 'view_model.g.dart';

@riverpod
class TopViewModel extends _$TopViewModel {
  QuizRepo get quizRepo => ref.read(quizRepoProvider.notifier);
  @override
  FutureOr<TopState> build() async {
    const state = TopState(index: 0);
    return state;
  }

  Future<void> navigateToQuestionPage(BuildContext context, int index) async {
    final data = state.requireValue;
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>  const QuestionPage(index: 0),
      ),
    );
  }
}
