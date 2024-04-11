import 'package:flutter/material.dart';
import 'package:mottaina_eat/domain/quiz/domain.dart';
import 'package:mottaina_eat/domain/quiz/repository.dart';
import 'package:mottaina_eat/features/question/choice_class.dart';
import 'package:mottaina_eat/features/question/page/question.dart';
import 'package:mottaina_eat/features/question/result_class.dart';
import 'package:mottaina_eat/features/question/state.dart';
import 'package:mottaina_eat/features/result/page/result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'view_model.g.dart';

@riverpod
class QuestionViewModel extends _$QuestionViewModel {
  QuizRepo get quizRepo => ref.read(quizRepoProvider.notifier);

  @override
  FutureOr<QuestionState> build(int index) async {
    final int indexSecond = index;
    final int quizLength = await quizRepo.getQuizLength();
    final QuizClass quiz = await getQuiz();
    final List<ChoiceClass> choices = await getChoices();
    final state = QuestionState(
      indexSecond: indexSecond,
      quiz: quiz,
      choices: choices,
      quizLength: quizLength,
    );
    return state;
  }

  FutureOr<QuizClass> getQuiz() async {
    final QuizClass quiz = await quizRepo.getQuiz(index);
    return quiz;
  }

  FutureOr<List<ChoiceClass>> getChoices() async {
    final List<ChoiceClass> choices = await quizRepo.getChoices(index);
    return choices;
  }

  Future<void> selected(BuildContext context, int number, int index) async {
    final data = state.requireValue;
    state = AsyncData(data.copyWith(screenEnabled: false));
    final List<ResultClass> results = [];
    if (number == 0) {
      results.add(ResultClass(data.quiz.id, true));
      state = AsyncData(data.copyWith(results: results));
    } else {
      results.add(ResultClass(data.quiz.id, false));
    }
    state = AsyncData(data.copyWith(results: results));
    print('$state');
    if (index == data.quizLength) {
      state = AsyncData(data.copyWith(nextText: '結果を見る'));
    } else {
      state = AsyncData(data.copyWith(nextText: '次の問題へ'));
    }
  }

  Future<void> showIconTF(BuildContext context, int index) async {}

  Future<void> showIconAndPopup(
      BuildContext context, int number, int index) async {
    final data = state.requireValue;
    state = AsyncData(data.copyWith(screenEnabled: false));
    if (number == 0) {
      state = await AsyncData(data.copyWith(isTrue: true));
    } else {
      state = await AsyncData(data.copyWith(isFalse: true));
    }
    await Future.delayed(const Duration(seconds: 1), () {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return PopScope(
            canPop: false,
            child: AlertDialog(
              content: Text(data.quiz.explanation ?? ''),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    if (data.indexSecond == 1) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ResultPage(),
                        ),
                      );
                    } else {
                      build(data.indexSecond);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => QuestionPage(index: index),
                        ),
                      );
                    }
                  },
                  child: Text(data.nextText ?? ''),
                ),
              ],
            ),
          );
        },
      );
    });
  }
}
