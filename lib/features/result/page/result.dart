import 'package:mottaina_eat/components/primary_button.dart';
import 'package:mottaina_eat/components/secondary_app_bar.dart';
import 'package:mottaina_eat/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mottaina_eat/features/result/view_model.dart';

class ResultPage extends ConsumerWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(resultViewModelProvider);
    return state.when(
        data: (data) => PopScope(
              canPop: false,
              child: Scaffold(
                backgroundColor: Colors.white,
                appBar: const SecondaryAppBar(),
                body: Column(
                  children: [
                    const SizedBox(height: 60),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.3,
                          width: MediaQuery.of(context).size.width * 0.9,
                          color: ColorName.greyBase,
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top: 20, left: 40),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      '問中',
                                      style: TextStyle(fontSize: 25),
                                    ),
                                  ],
                                ),
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('7'),
                                  Text(
                                    '問正解',
                                    style: TextStyle(
                                        fontSize: 50,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.all(10),
                                child: Text('正答率'),
                              ),
                              PrimaryButton(
                                onPressed: () => ref
                                    .read(resultViewModelProvider.notifier)
                                    .navigateToTopPage(context),
                                text: 'ホームに戻る',
                                width: MediaQuery.of(context).size.width * 0.8,
                                textColor: ColorName.black2,
                                borderRaius: 30,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 50),

                    // //Listviewの使い方見直す
                    // Column(
                    //   children: [
                    //     Expanded(
                    //       child: SizedBox(
                    //         height: MediaQuery.of(context).size.height * 0.6,
                    //         child: ListView(
                    //           children: [
                    //             for (int i = 0; i < results.length; i++) ...{
                    //               ResultDetail(
                    //                   true, data.quizzes[idList?[0] ?? 0]),
                    //               const SizedBox(height: 20)
                    //             },
                    //           ],
                    //         ),
                    //       ),
                    //     ),
                    //   ],
                    // ),

                    //コンポーネント化
                  ],
                ),
              ),
            ),
        error: (error, StackTrace) => const SizedBox(),
        loading: () => const Center(
              child: CircularProgressIndicator(),
            ));
  }
}
