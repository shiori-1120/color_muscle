import 'package:mottaina_eat/components/secondary_app_bar.dart';
import 'package:mottaina_eat/features/question/components/select_button.dart';
import 'package:mottaina_eat/features/question/result_class.dart';
import 'package:mottaina_eat/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mottaina_eat/features/question/view_model.dart';

class QuestionPage extends ConsumerWidget {
  const QuestionPage({required this.index, required this.results, super.key});

  final int index;
  final List<ResultClass> results;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(questionViewModelProvider(index, results));
    final int nowIndex = index + 1;
    return state.when(
      data: (data) => PopScope(
        canPop: false,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: const SecondaryAppBar(),
          body: Stack(
            children: [
              Column(
                children: [
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 20,
                    child: Text(
                      '$nowIndex問/${data.quizLength}問',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.3,
                        width: MediaQuery.of(context).size.width * 0.9,
                        color: Colors.amber,
                      ),
                    ],
                  ),
                  const SizedBox(height: 50),
                  Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.32 + 80,
                        child: ListView(
                          children: [
                            Column(
                              children: [
                                for (int i = 0; i < 4; i++) ...{
                                  SelectButton(
                                    data.choices[i].number,
                                    data.screenEnabled
                                        ? () async {
                                            // await ref
                                            //     .read(
                                            //       questionViewModelProvider(
                                            //               index, results)
                                            //           .notifier,
                                            //     )
                                            //     .selected(index + 1);
                                            await ref
                                                .read(
                                                  questionViewModelProvider(
                                                          index, results)
                                                      .notifier,
                                                )
                                                .addResult(
                                                    data.choices[i].number);
                                            await ref
                                                .read(
                                                  questionViewModelProvider(
                                                          index, results)
                                                      .notifier,
                                                )
                                                .selected(
                                                  context,
                                                  data.choices[i].number,
                                                  index + 1,
                                                );
                                          }
                                        : null,
                                    data.choices[i].text ?? '',
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                }
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              if (data.isTrue) // 画面が無効の場合にのみアイコンを表示
                const Center(
                  child: Icon(
                    Icons.circle_outlined,
                    size: 230,
                    color: ColorName.trueRed,
                  ),
                ),
              if (data.isFalse)
                const Center(
                  child: Icon(
                    Icons.cancel_outlined,
                    size: 100,
                    color: ColorName.falseBlue,
                  ),
                ),
            ],
          ),
        ),
      ),
      error: (error, stackTrace) {
        // エラーログを出力する
        print('Error occurred: $error');
        print('Stack trace: $stackTrace');

        // エラーログが表示されるSizedBoxを返す
        return const SizedBox();
      },
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
