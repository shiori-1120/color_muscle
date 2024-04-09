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
                                width: MediaQuery.of(context).size.width*0.8,
                                textColor: ColorName.black2,
                                borderRaius: 30,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 50),

                    //Listviewの使い方見直す

                    SingleChildScrollView(
                      child: Container(
                        height: 100,
                        width: MediaQuery.of(context).size.width * 0.9,
                        color: Colors.blueAccent,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Center(
                                child: PrimaryButton(
                                  padding: const EdgeInsets.all(0),
                                  height: 80,
                                  width: 80,
                                  text: '詳細',
                                  borderRaius: 40,
                                  backgroundColor: ColorName.whiteBase,
                                  textColor: ColorName.black2,
                                  onPressed: () => ref
                                      .read(resultViewModelProvider.notifier)
                                      .navigateToResultDetailPage(context),
                                ),
                              ),
                              const Text(
                                'サックスブルー',
                                style: TextStyle(
                                    color: ColorName.whiteBase, fontSize: 20),
                              ),
                              Container(
                                alignment: Alignment.centerRight,
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: const Color(0xFF000000),
                                      width: 2.0,
                                      style: BorderStyle.solid,
                                      strokeAlign: BorderSide.strokeAlignInside,
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ) //コンポーネント化
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
