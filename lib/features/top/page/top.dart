import 'package:mottaina_eat/features/top/components/select_box.dart';
import 'package:mottaina_eat/features/top/view_model.dart';
import 'package:flutter/material.dart';
import 'package:mottaina_eat/components/primary_app_bar.dart';
import 'package:mottaina_eat/features/top/components/top_button.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TopPage extends ConsumerWidget {
  const TopPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(topViewModelProvider);
    return state.when(
      data: (data) => Scaffold(
        backgroundColor: Colors.white,
        appBar: const PrimaryAppBar(title: '色彩検定対策アプリ'),
        body: Column(
          children: [
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(height: 200, width: 200, color: Colors.amber),
              ],
            ),
            const SizedBox(height: 50),
            const SelectBox(),
            const SizedBox(height: 30),
            // const Positioned(bottom: 100, child: TopButton()),
            TopButton(questionNumber: data.questionNumber,questionType:data.questionType,gradeType:data.gradeType),
          ],
        ),
      ),
      error: (error, stackTrace) => const SizedBox(),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
