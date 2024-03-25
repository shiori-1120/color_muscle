import 'package:color_muscle/components/primary_button.dart';
import 'package:color_muscle/components/secondary_app_bar.dart';
import 'package:color_muscle/features/result_details/view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ResultDetailPage extends ConsumerWidget {
  const ResultDetailPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(resultDetailViewModelProvider);
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
                    height: 400,
                    width: 600,
                    color: Colors.amber,
                    child:  Column(
                      children: [
                        const Text('問中'),
                        const Text('問正解'),
                        const Text('正答率'),
                        PrimaryButton(
                          text: 'ホームに戻る',
                          onPressed: () => ref
                              .read(resultDetailViewModelProvider.notifier)
                              .navigateToResultPage(context),
                        ),
                      ],
                    ),
                  ), //コンポーネント化
                ],
              ),
            ],
          ),
        ),
      ),
      error: (error, StackTrace) => const SizedBox(),
      loading: () => const Center(child: CircularProgressIndicator(),)
    );
  }
}
