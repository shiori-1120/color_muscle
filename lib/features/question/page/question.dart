import 'package:mottaina_eat/components/secondary_app_bar.dart';
import 'package:mottaina_eat/features/question/components/select_button.dart';
import 'package:mottaina_eat/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mottaina_eat/features/question/view_model.dart';

class QuestionPage extends ConsumerWidget {
  const QuestionPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(questionViewModelProvider);
    return state.when(
        data: (data) => PopScope(
              canPop: false,
              child: Scaffold(
                backgroundColor: Colors.white,
                appBar: const SecondaryAppBar(),
                body: Stack(children: [
                  Column(
                    children: [
                      const SizedBox(height: 20),
                      const SizedBox(
                        height: 20,
                        child: Text(
                          '1問/5問',
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
                              color: Colors.amber),
                        ],
                      ),
                      const SizedBox(height: 50),
                      Column(
                        children: [
                          SizedBox(
                            height:
                                MediaQuery.of(context).size.height * 0.07 * 4 +
                                    100,
                            child: Column(
                              children:
                                  List.generate(data.choices.length, (index) {
                                final choice = data.choices[index];
                                return Column(
                                  children: [
                                    SelectButton(
                                      choice.number,
                                      data.screenEnabled
                                          ? () async {
                                              await ref
                                                  .read(
                                                      questionViewModelProvider
                                                          .notifier)
                                                  .showIconAndPopup(
                                                      context, choice.number);
                                            }
                                          : null,
                                      data.quiz.explanation ?? '',
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                  ],
                                );
                              }),
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
                ]),
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
            ));
  }
}
