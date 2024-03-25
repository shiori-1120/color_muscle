import 'package:color_muscle/components/primary_button.dart';
import 'package:color_muscle/components/secondary_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:color_muscle/features/result/view_model.dart';

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
                    const SizedBox(height: 20),
                    const Text(
                      '1問/5問',
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 100,
                          color: Colors.amber,
                          child:  Column(
                            children: [
                              const Text('問中'),
                              const Text('問正解'),
                              const Text('正答率'),
                              PrimaryButton(
                                  onPressed: () => ref
                                      .read(resultViewModelProvider.notifier)
                                      .navigateToTopPage(context),
                                  text: 'ホームに戻る',),
                            ],
                          ),
                        ), //コンポーネント化
                      ],
                    ),
                    const SizedBox(height: 20),
                    //Listviewの使い方見直す

                    Container(
                      height: 100,
                      width: 300,
                      color: Colors.blueAccent,
                      child: Column(
                        children: [
                          PrimaryButton(
                            height: 30,
                            width: 100,
                            text: '詳細',
                            onPressed: () => ref
                                .read(resultViewModelProvider.notifier)
                                .navigateToResultDetailPage(context),
                          ),
                          const Text('サックスブルー'),
                          Container(
                            color: Colors.white,
                            height: 20,
                            width: 20,
                          ),
                        ],
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
