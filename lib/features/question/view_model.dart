import 'package:flutter/material.dart';
import 'package:mottaina_eat/components/primary_button.dart';
import 'package:mottaina_eat/domain/quiz/domain.dart';
import 'package:mottaina_eat/domain/quiz/repository.dart';
import 'package:mottaina_eat/features/question/choice_class.dart';
import 'package:mottaina_eat/features/question/state.dart';
import 'package:mottaina_eat/features/result/page/result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'view_model.g.dart';

@riverpod
class QuestionViewModel extends _$QuestionViewModel {
  QuizRepo get quizRepo => ref.read(quizRepoProvider.notifier);

  @override
  FutureOr<QuestionState> build() async {
    final int quizLength = await quizRepo.getQuizLength();
    final QuizClass quiz = await getQuiz(0);
    final List<ChoiceClass> choices = await getChoices(0);

    final state = QuestionState(
      resultsBool: [],
      resultsId: [],
      quiz: quiz,
      choices: choices,
      quizLength: quizLength,
    );
    return state;
  }

  FutureOr<QuizClass> getQuiz(index) async {
    final QuizClass quiz = await quizRepo.getQuiz(index);
    return quiz;
  }

  FutureOr<List<ChoiceClass>> getChoices(index) async {
    final List<ChoiceClass> choices = await quizRepo.getChoices(index);
    return choices;
  }

  Future<void> saveResult(int number) async {
    final data = state.requireValue;
    final List<bool> newBoolList = [
      ...data.resultsBool,
      number == 0 ? true : false
    ];
    print(data.resultsId);
    final List<String> newIndexList = [...data.resultsId, data.quiz.id];
    print(newIndexList);
    state = AsyncData(
        data.copyWith(resultsId: newIndexList, resultsBool: newBoolList));

    print(data.resultsId);
    print(data.resultsBool);
  }

  FutureOr<void> next(int index) async {
    final data = state.requireValue;
    if (index == data.quizLength) {
      state = AsyncData(data.copyWith(nextText: '結果を見る'));
    } else {
      state = AsyncData(data.copyWith(nextText: '次の問題へ'));
    }
  }


  FutureOr<void> updateResultCount(int index, int number) async {
    final data = state.requireValue;
   if (number == 0) {
      await quizRepo.updateResultCounts(data.index, true);
    } else {
      await quizRepo.updateResultCounts(data.index, false);
    }
  }

  Future<void> showIconAndPopup(
    BuildContext context,
    int number,
    int index,
  ) async {
    final data = state.requireValue;
    if (number == 0) {
      await quizRepo.updateResultCounts(data.index, true);
      state = AsyncData(data.copyWith(isTrue: true));
    } else {
      await quizRepo.updateResultCounts(data.index, false);
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
              backgroundColor: const Color.fromARGB(204, 255, 203, 173),
              content: Container(
                  child: Column(
                children: [
                  Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Text('Q.$index'),
                          Text(data.quiz.quizStatement ?? ''),
                        ],
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          const Text('解説'),
                          Text(data.quiz.explanation ?? ''),
                        ],
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  PrimaryButton(
                    onPressed: () async {
                      if (index+1 == data.quizLength) {
                        saveResult(number);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ResultPage(),
                          ),
                        );
                      } else {
                        Navigator.of(context).pop();
                        final int nextIndex = data.index + 1;
                        final QuizClass nextQuestion = await getQuiz(nextIndex);
                        final List<ChoiceClass> nextChoices =
                            await getChoices(nextIndex);
                        print(nextChoices);
                        state = AsyncData(data.copyWith(
                          index: nextIndex,
                          quiz: nextQuestion,
                          choices: nextChoices,
                        ));
                      }
                    },
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.07,
                    text: data.nextText ?? '',
                    textColor: Colors.black,
                    borderRaius: 20,
                    backgroundColor: Colors.white,
                  ),
                ],
              )),
              actions: <Widget>[
                TextButton(
                  onPressed: () async {},
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
