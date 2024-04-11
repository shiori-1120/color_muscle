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
    print('indexの値$index');
    final int indexSecond = index;
    print('indexSecondの値$index');
    final QuizClass quiz = await getQuiz();
    final List<ChoiceClass> choices = await getChoices();
    final state = QuestionState(
      indexSecond: indexSecond,
      quiz: quiz,
      choices: choices,
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

  Future<void> showIconAndPopup(
      BuildContext context, int number, int index) async {
    final data = state.requireValue;
    final int index2 = data.indexSecond;
    state = AsyncData(data.copyWith(indexSecond: index + 1));
    print('画面遷移中のindex$index');
    print('画面遷移中のindex$index2');
    state = AsyncData(data.copyWith(screenEnabled: false));
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
                          builder: (context) =>
                              QuestionPage(index: data.indexSecond),
                        ),
                      );
                    }
                  },
                  child: Text('次の問題へ進む$index'),
                ),
              ],
            ),
          );
        },
      );
    });
    state = AsyncData(data.copyWith(isTrue: false, isFalse: false));
  }
}
