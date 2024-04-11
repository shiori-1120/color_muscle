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
  FutureOr<QuestionState> build() async {
        print('あああああああああああああああああああああああああああああ');

        // Stateの取得
  final stateAsync = ref.watch(questionViewModelProvider);
  // StateがAsyncLoading状態でないことを確認し、requireValueを呼び出す
  if (stateAsync is AsyncData<QuestionState>) {
    final data = stateAsync.requireValue;

    final QuizClass quiz = await getQuiz();
    print('$quiz');
    final List<ChoiceClass> choices = await getChoices();
    print('$choices');
    final index = await getindex();
    print('$index');
    final state = QuestionState(
      index: index,
      quiz: quiz,
      choices: choices,
    );
    print('$state');
    return state;
  }
  else {
    // StateがAsyncLoading状態でない場合の処理
    // 例えばローディング中のUIを表示するなど
    return QuestionState(
      index: 0, // Set appropriate initial values for index, quiz, and choices
      quiz: const QuizClass(id: '1'), // Example: Create a new QuizClass instance
      choices: [], // Example: Initialize choices as an empty list
    );
  }
}

  FutureOr<int> getindex() async {
    final data = state.requireValue;
    final int index = data.index;
    return index;
  }

  FutureOr<QuizClass> getQuiz() async {
    final data = state.requireValue;
    final QuizClass quiz = await quizRepo.getQuiz(data.index);
    return quiz;
  }

  FutureOr<List<ChoiceClass>> getChoices() async {
    final data = state.requireValue;
    final List<ChoiceClass> choices = await quizRepo.getChoices(data.index);
    return choices;
  }

  Future<void> showIconAndPopup(BuildContext context, int number) async {
    final data = state.requireValue;
    state =
        AsyncData(data.copyWith(screenEnabled: false, index: data.index + 1));
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
                    if (data.index == 2) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ResultPage(),
                        ),
                      );
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => QuestionPage(),
                        ),
                      );
                    }
                  },
                  child: const Text('次の問題へ進む'),
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
