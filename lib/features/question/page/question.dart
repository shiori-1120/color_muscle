import 'package:mottaina_eat/components/mainContainer.dart';
import 'package:mottaina_eat/components/secondary_app_bar.dart';
import 'package:mottaina_eat/features/question/components/select_button.dart';
import 'package:mottaina_eat/features/question/view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mottaina_eat/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mottaina_eat/style/styles.dart';

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
                    const SizedBox(height: 15),
                    SizedBox(
                      height: 20,
                      child: Text(
                        '${data.index + 1}問/${data.quizLength}問',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        mainContainer(
                          height: MediaQuery.of(context).size.height * 0.3,
                          width: MediaQuery.of(context).size.width * 0.9,
                          children: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  data.quiz.quizStatement ?? 'エラー',
                                  style: Styles.twentysix,
                                  maxLines: 7,
                                )
                              ]),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
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
                                      number: data.choices[i].number,
                                      onPressed: data.screenEnabled
                                          ? () async {
                                              await ref
                                                  .read(
                                                    questionViewModelProvider
                                                        .notifier,
                                                  )
                                                  .saveResult(
                                                      data.choices[i].number)
                                                  .then((value) => ref
                                                      .read(
                                                        questionViewModelProvider
                                                            .notifier,
                                                      )
                                                      .next(data.index + 1))
                                                  .then((value) => ref
                                                      .read(
                                                        questionViewModelProvider
                                                            .notifier,
                                                      )
                                                      .showIconAndPopup(
                                                          context,
                                                          data.choices[i]
                                                              .number,
                                                          data.index));
                                            }
                                          : null,
                                      text: data.choices[i].text ?? '',
                                    ),
                                    const SizedBox(
                                      height: 5,
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
                      Icons.clear,
                      size: 230,
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
