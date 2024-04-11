import 'package:mottaina_eat/components/secondary_app_bar.dart';
import 'package:mottaina_eat/features/question/components/select_button.dart';
import 'package:mottaina_eat/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mottaina_eat/features/question/view_model.dart';

class QuestionPage extends ConsumerWidget {
  const QuestionPage({required this.index, super.key});

  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(questionViewModelProvider(index));
    print('QuestionPageのindex$index');
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
                                SelectButton(
                                  data.choices[0].number,
                                  data.screenEnabled
                                      ? () async {
                                          await ref
                                              .read(
                                                questionViewModelProvider(index)
                                                    .notifier,
                                              )
                                              .showIconAndPopup(
                                                context,
                                                data.choices[0].number,
                                                index,
                                              );
                                        }
                                      : null,
                                  data.choices[0].text ?? '',
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                SelectButton(
                                  data.choices[1].number,
                                  data.screenEnabled
                                      ? () async {
                                          await ref
                                              .read(
                                                questionViewModelProvider(index)
                                                    .notifier,
                                              )
                                              .showIconAndPopup(
                                                context,
                                                data.choices[1].number,
                                                index,
                                              );
                                        }
                                      : null,
                                  data.choices[1].text ?? '',
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                SelectButton(
                                  data.choices[2].number,
                                  data.screenEnabled
                                      ? () async {
                                          await ref
                                              .read(
                                                questionViewModelProvider(index)
                                                    .notifier,
                                              )
                                              .showIconAndPopup(
                                                context,
                                                data.choices[2].number,
                                                index,
                                              );
                                        }
                                      : null,
                                  data.choices[2].text ?? '',
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                SelectButton(
                                  data.choices[3].number,
                                  data.screenEnabled
                                      ? () async {
                                          await ref
                                              .read(
                                                questionViewModelProvider(index)
                                                    .notifier,
                                              )
                                              .showIconAndPopup(
                                                context,
                                                data.choices[3].number,
                                                index,
                                              );
                                        }
                                      : null,
                                  data.choices[3].text ?? '',
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
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
