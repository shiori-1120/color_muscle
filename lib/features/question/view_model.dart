import 'dart:js';
import 'dart:math';

import 'package:mottaina_eat/domain/quiz/domain.dart';
import 'package:mottaina_eat/domain/quiz/repository.dart';
import 'package:flutter/material.dart';
import 'package:mottaina_eat/features/question/choice_class.dart';
import 'package:mottaina_eat/features/question/state.dart';
import 'package:mottaina_eat/features/result/page/result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:logger/logger.dart'; // ロガーパッケージをインポート

part 'view_model.g.dart';

@riverpod
class QuestionViewModel extends _$QuestionViewModel {
  QuizRepo get quizRepo => ref.read(quizRepoProvider.notifier);

  final _logger = Logger();

  @override
  FutureOr<QuestionState> build() async {
    return _generateQuestionState();
  }

  FutureOr<QuestionState> _generateQuestionState() async {
    final QuizClass quiz = await quizRepo.getFirstQuiz();

    final List<ChoiceClass> choiceClass = [
      ChoiceClass(quiz.falseChoice1, 1),
      ChoiceClass(quiz.falseChoice2, 2),
      ChoiceClass(quiz.falseChoice3, 3),
      ChoiceClass(quiz.trueChoice, 4),
    ];

    Random random = Random();
    choiceClass.shuffle(random);

    final state = QuestionState(
      quiz: quiz,
      choiceClass: choiceClass,
    );

    return state;
  }

  Future<void> showIconAndPopup(BuildContext context, int order) async {
    final data = state.requireValue;
    state = AsyncData(data.copyWith(screenEnabled: false));
    if (order == 4) {
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
              content: Text(data.quiz?.explanation ?? ''),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    ref.read(questionViewModelProvider.notifier).refresh();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ResultPage(),
                      ),
                    );
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

  void refresh() async{
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => _generateQuestionState());
  }
}
