import 'package:flutter/material.dart';
import 'package:mottaina_eat/domain/quiz/domain.dart';
import 'package:mottaina_eat/domain/quiz/repository.dart';
import 'package:mottaina_eat/features/question/choice_class.dart';
import 'package:mottaina_eat/features/question/page/question.dart';
import 'package:mottaina_eat/features/question/state.dart';
import 'package:mottaina_eat/features/result/page/result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'view_model.g.dart';

@riverpod
class QuestionViewModel extends _$QuestionViewModel {
  QuizRepo get quizRepo => ref.read(quizRepoProvider.notifier);

  @override
  FutureOr<QuestionState> build(int index) async {
    final int quizLength = await quizRepo.getQuizLength();
    final QuizClass quiz = await getQuiz();
    final List<ChoiceClass> choices = await getChoices();

    final state = QuestionState(
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

  Future<void> next(int index) async {
    final data = state.requireValue;
    if (index == data.quizLength) {
      state = AsyncData(data.copyWith(nextText: '結果を見る'));
    } else {
      state = AsyncData(data.copyWith(nextText: '次の問題へ'));
    }
    // makeResultList(number);
  }

  Future<void> addResult(int number) async {
    final data = state.requireValue;
    List<ResultClass> list = [];

    for (int i = 0; i < index + 1; i++) {
      if (data.resultsState?[i] == null) {
      } else {
        list.add(data.resultsState![i]);
      }
    }
    if (number == 0) {
      list.add(ResultClass('${index + 1}', true));
    } else {
      list.add(ResultClass('${index + 1}', false));
    }
    print('リスト$list');
    return list;
    }

  Future<void> showIconAndPopup(
    BuildContext context,
    int number,
    int index,
  ) async {
    final data = state.requireValue;
    if (number == 0) {
      state = AsyncData(data.copyWith(isTrue: true));
    } else {
      state = AsyncData(data.copyWith(isFalse: true));
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
                    if (index == data.quizLength) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResultPage(
                            results: results,
                          ),
                        ),
                      );
                    } else {
                      build(index, results);

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => QuestionPage(
                              index: index, results: data.resultsState ?? []),
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

  FutureOr<void> selected(
    BuildContext context,
    int number,
    int index,
  ) async {
    await next(index);
    await showIconAndPopup(context, number, index);
  }
}
