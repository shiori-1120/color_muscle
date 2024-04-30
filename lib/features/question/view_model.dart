import 'package:flutter/material.dart';
import 'package:mottaina_eat/components/mainContainer.dart';
import 'package:mottaina_eat/components/primary_button.dart';
import 'package:mottaina_eat/domain/quiz/domain.dart';
import 'package:mottaina_eat/domain/quiz/repository.dart';
import 'package:mottaina_eat/features/question/choice_class.dart';
import 'package:mottaina_eat/features/question/components/explanation_photo_part.dart';
import 'package:mottaina_eat/features/question/components/explanation_url_part.dart';
import 'package:mottaina_eat/features/question/state.dart';
import 'package:mottaina_eat/features/result/page/result.dart';
import 'package:mottaina_eat/features/top/page/top.dart';
import 'package:mottaina_eat/style/colors.dart';
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

  Future<void> escape(BuildContext context) async {
    final data = state.requireValue;
    final QuizClass nextQuestion = await getQuiz(0);
    final List<ChoiceClass> nextChoices = await getChoices(0);
    state = AsyncData(data.copyWith(
        index: 0,
        quiz: nextQuestion,
        choices: nextChoices,
        resultsBool: [],
        resultsId: []));
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const TopPage(),
      ),
    );
  }

  Future<void> saveResult(int number) async {
    print('saveResult');
    final data = state.requireValue;
    final List<bool> newBoolList = [
      ...data.resultsBool,
      number == 0 ? true : false
    ];
    final List<int> newIndexList = [...data.resultsId, data.index + 1];
    state = AsyncData(
      data.copyWith(resultsId: newIndexList, resultsBool: newBoolList),
    );
    print('結果をセーブしました');
    print(data.resultsBool);
    print(data.resultsId);
  }

  FutureOr<void> next(int index) async {
    print('next');
    final data = state.requireValue;
    if (index == data.quizLength) {
      state = AsyncData(data.copyWith(nextText: '結果を見る'));
    } else {
      state = AsyncData(data.copyWith(nextText: '次の問題へ'));
    }
  }

  FutureOr<void> updateResultCount() async {
    final data = state.requireValue;
    await quizRepo.updateResultCounts(
        data.quizLength ?? 0, data.resultsBool, data.resultsId);
  }

  Future<void> changeScreenEnabled() async {
    print('changeScreenEnabled');
    final data = state.requireValue;
    state = AsyncData(data.copyWith(screenEnabled: false));
  }

  Future<void> showIconAndPopup(
    BuildContext context,
    int number,
    int index,
  ) async {
    print('showIconPopup$index');
    final data = state.requireValue;
    if (number == 0) {
      state = AsyncData(data.copyWith(isTrue: true));
    } else {
      state = AsyncData(data.copyWith(isFalse: true));
    }
    await Future.delayed(const Duration(milliseconds: 500), () {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return PopScope(
            canPop: false,
            child: AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20), //丸み
              ),
              insetPadding: const EdgeInsets.only(left: 15, right: 15),
              backgroundColor: const Color.fromARGB(204, 255, 203, 173),
              content: ConstrainedBox(
                constraints: const BoxConstraints(minHeight: 420),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ConstrainedBox(
                        constraints: const BoxConstraints(minHeight: 170),
                        child: mainContainer(
                            width: MediaQuery.of(context).size.width * 0.8,
                            height: MediaQuery.of(context).size.height * 0.2,
                            children: Padding(
                              padding: const EdgeInsets.only(left: 8, right: 8),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Q.${index + 1}',
                                        style: const TextStyle(
                                            color: ColorName.black2,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    data.quiz.quizStatement ?? '',
                                    maxLines: 3,
                                    style: const TextStyle(
                                      color: ColorName.black2,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      const Text(
                                        '正解',
                                        style: TextStyle(
                                          color: ColorName.black2,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        children: [
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.5,
                                            child: Text(
                                              data.quiz.trueChoice ?? '',
                                              maxLines: 2,
                                              style: const TextStyle(
                                                color: ColorName.black2,
                                                fontWeight: FontWeight.bold,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )),
                      ),
                      ConstrainedBox(
                        constraints: const BoxConstraints(minHeight: 170),
                        child: mainContainer(
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: MediaQuery.of(context).size.height * 0.2,
                          children: Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Column(
                              children: [
                                const Row(
                                  children: [
                                    Text(
                                      '解説',
                                      style: TextStyle(
                                          color: ColorName.black2,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  data.quiz.explanation ?? '',
                                  style:
                                      const TextStyle(color: ColorName.black2),
                                ),
                                explanationUrlPart(
                                  url: data.quiz.url,
                                ),
                                explanationPhotoPart(
                                  photoUrl: data.quiz.photoUrl,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      PrimaryButton(
                        onPressed: () async {
                          state = AsyncData(data.copyWith(
                            isFalse: false,
                            isTrue: false,
                          ));
                          if (index + 1 == data.quizLength) {
                            print('最後のボタン');
                            final List<bool> newBoolList = [
                              ...data.resultsBool,
                          
                            ];
                            final List<int> newIndexList = [
                              ...data.resultsId,
                      
                            ];
                            state = await AsyncData(
                              data.copyWith(
                                  resultsId: newIndexList,
                                  resultsBool: newBoolList),
                            );
                            print(newIndexList);
                            print(newBoolList);
                            await updateResultCount();
                            final QuizClass nextQuestion = await getQuiz(0);
                            final List<ChoiceClass> nextChoices =
                                await getChoices(0);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ResultPage(
                                    resultsBool: newBoolList,
                                    resultsId: newIndexList,
                                    quizLength: data.quizLength!),
                              ),
                            );
                            state = AsyncData(data.copyWith(
                                index: 0,
                                quiz: nextQuestion,
                                choices: nextChoices,
                                resultsBool: [],
                                resultsId: [],
                                screenEnabled: true));
                          } else {
                            Navigator.of(context).pop();
                            final int nextIndex = data.index + 1;
                            final QuizClass nextQuestion =
                                await getQuiz(nextIndex);
                            final List<ChoiceClass> nextChoices =
                                await getChoices(nextIndex);
                            state = AsyncData(data.copyWith(
                              index: nextIndex,
                              quiz: nextQuestion,
                              choices: nextChoices,
                              screenEnabled: true,
                            ));
                          }
                        },
                        width: 150,
                        height: 30,
                        text: data.nextText ?? '',
                        textColor: ColorName.black2,
                        borderRaius: 20,
                        backgroundColor: Colors.white.withOpacity(0.8),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      );
    });
  }
}
