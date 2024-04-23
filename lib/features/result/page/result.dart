import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mottaina_eat/components/primary_button.dart';
import 'package:mottaina_eat/components/secondary_app_bar.dart';
import 'package:mottaina_eat/features/result/view_model.dart';
import 'package:mottaina_eat/style/colors.dart';

class ResultPage extends ConsumerWidget {
  const ResultPage({
    Key? key,
    required this.resultsBool,
    required this.resultsId,
    required this.quizLength,
  }) : super(key: key);

  final List<bool> resultsBool;
  final List<int> resultsId;
  final int quizLength;

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
                                fontWeight: FontWeight.bold,
                              ),
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
              Expanded(
                child: ListView.builder(
                  itemCount: quizLength,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Container(
                          child: resultsBool[index] == true
                              ? const Text('true')
                              : const Text('false'),
                        ),
                        Text('${index + 1}問目'),
                        Text(
                            '${data.quizzes[resultsId[index]].quizStatement}'),
                        Text(
                            '${data.quizzes[resultsId[index]].incorrectCount}/${data.quizzes[resultsId[index]].incorrectCount}')
                      ],
                    );
                  },
                ),
              ),
              //コンポーネント化
            ],
          ),
        ),
      ),
      error: (error, StackTrace) => const SizedBox(),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
