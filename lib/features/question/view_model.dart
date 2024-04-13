import 'package:flutter/material.dart';
import 'package:mottaina_eat/components/primary_button.dart';
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

  FutureOr<void> next(int index) async {
    final data = state.requireValue;
    if (index == data.quizLength) {
      state = AsyncData(data.copyWith(nextText: '結果を見る'));
    } else {
      state = AsyncData(data.copyWith(nextText: '次の問題へ'));
    }
  }

  Future<void> addResults(int number) async {
    final data = state.requireValue;

    List<bool>? newBoolList;
    List<String>? newIndexList; // newIndexListもnullableに変更

    // 条件演算子を使って数値に応じてリストに要素を追加
    newBoolList = [...data.resultsBool, number == 0 ? true : false];
    newIndexList = [...data.resultsIndex, data.quiz.id]; // newIndexListを作成

    print('newBoolList$newBoolList');
    print('newIndexList$newIndexList');
    print('state$state');
    final newData = data.copyWith(
        resultsBool: [true, false, true], resultsIndex: [...newIndexList]);
    print('newData$newData');
    print('state$state');
    print(
        'data.resultsBool${data.resultsBool}data.resultsIndex${data.resultsIndex}');
    state = AsyncData(newData);
    print(
        'data.resultsBool${data.resultsBool}data.resultsIndex${data.resultsIndex}');
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
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                       color: Colors.white,
                      child: Column(
                    children: [
                      Text('解説'),
                      Text(data.quiz.explanation ?? ''),
                    ],
                  )),
                  SizedBox(
                    height: 10,
                  ),
                  PrimaryButton(
                    
                    onPressed: () {
                      if (index == data.quizLength) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ResultPage(),
                          ),
                        );
                      } else {
                        build(index);

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => QuestionPage(index: index),
                          ),
                        );
                      }
                    },
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.07,
                    text: data.nextText ?? '',
                    textColor: Colors.black,
                    borderRaius: 20,
                    backgroundColor:    Colors.white,
                  ),
                ],
              )),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    if (index == data.quizLength) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResultPage(),
                        ),
                      );
                    } else {
                      build(index);

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
