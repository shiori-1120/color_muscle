import 'package:mottaina_eat/components/secondary_app_bar.dart';
import 'package:mottaina_eat/features/question/components/select_button.dart';
import 'package:mottaina_eat/features/question/view_model.dart';

import 'package:mottaina_eat/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class QuestionPage extends ConsumerWidget {
  const QuestionPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(questionViewModelProvider);
    return state.when(
      data: (data) => Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://lh3.googleusercontent.com/pw/AP1GczP6EbprN0oQZbyhWUx5P5lix3vQyUc_CN6LgsTfcc0mHWdBwdK6wNKcbUMu8Yy6wlu3sGkJVQHYTGheaj5SJo3f0L8GEEA8-8fQ-ODUlZi7wna1Sefri3ne2IBBFTaI1wTcuKulzKA5CaeVFIy4qUTPeQ=w598-h846-s-no-gm?authuser=0'),
              fit: BoxFit.cover),
        ),
        child: PopScope(
          canPop: false,
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: const SecondaryAppBar(),
            body: Stack(
              children: [
                Column(
                  children: [
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 20,
                      child: Text(
                        '${data.index + 1}問/${data.quizLength}問',
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
                          color: Colors.white,
                          child: Column(children: [
                            Text('Q.${data.index + 1}'),
                            Text(data.quiz.quizStatement ?? 'エラー')
                          ]),
                        ),
                      ],
                    ),
                    const SizedBox(height: 50),
                    Column(
                      children: [
                        SizedBox(
                          height:
                              MediaQuery.of(context).size.height * 0.32 + 80,
                          child: ListView(
                            children: [
                              Column(
                                children: [
                                  for (int i = 0; i < 4; i++) ...{
                                    SelectButton(
                                      data.choices[i].number,
                                      data.screenEnabled
                                          ? () async {
                                              await ref
                                                  .read(
                                                    questionViewModelProvider
                                                        .notifier,
                                                  )
                                                  .next(data.index + 1);
                                              await ref
                                                  .read(
                                                    questionViewModelProvider
                                                        .notifier,
                                                  )
                                                  .upDateState(
                                                      data.choices[i].number);

                                              await ref
                                                  .read(
                                                    questionViewModelProvider
                                                        .notifier,
                                                  )
                                                  .showIconAndPopup(
                                                      context,
                                                      data.choices[i].number,
                                                      data.index + 1);
                                            }
                                          : null,
                                      data.choices[i].text ?? '',
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
