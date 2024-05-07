import 'package:mottaina_eat/domain/quiz/domain.dart';
import 'package:mottaina_eat/domain/quiz/repository.dart';
import 'package:mottaina_eat/domain/totalCount/domain.dart';
import 'package:mottaina_eat/domain/totalCount/repository.dart';
import 'package:mottaina_eat/features/top/page/top.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:mottaina_eat/features/result/state.dart';
// 追加

part 'view_model.g.dart';

@riverpod
class ResultViewModel extends _$ResultViewModel {
  QuizRepo get quizRepo => ref.read(quizRepoProvider.notifier);
  TotalCountRepo get totalCountRepo =>
      ref.read(totalCountRepoProvider.notifier);

  @override
  FutureOr<ResultState> build() async {
    final List<QuizClass> quizzes = await getQuizzes();
    await totalCountRepo.updateTotalCount();
    final TotalCountClass totalCountClass =
        await totalCountRepo.fetchTotalCount();
    final int totalCount = totalCountClass.totalCount;
    final state = ResultState(quizzes: quizzes, totalCount: totalCount);
    return state;
  }

  Future<void> navigateToResultDetailPage(
      BuildContext context, QuizClass quizClass) async {}

  Future<void> navigateToTopPage(BuildContext context) async {
    await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const TopPage()),
    );
  }

  FutureOr<List<QuizClass>> getQuizzes() async {
    final List<QuizClass> quizzes = await quizRepo.getQuizzes();
    return quizzes;
  }
}
