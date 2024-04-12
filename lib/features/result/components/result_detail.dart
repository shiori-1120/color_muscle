import 'package:mottaina_eat/components/primary_button.dart';
import 'package:mottaina_eat/domain/quiz/domain.dart';
import 'package:mottaina_eat/features/result/view_model.dart';
import 'package:mottaina_eat/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ResultDetail extends ConsumerWidget {
  const ResultDetail(
    this.tf,
    this.quiz, {
    super.key,
  });

  final bool tf;
  final QuizClass quiz;

  @override
  Widget build(BuildContext context, WidgetRef ref) => Center(
        child: PrimaryButton(
          padding: const EdgeInsets.all(10),
          height: 100,
          width: MediaQuery.of(context).size.width * 0.9,
          backgroundColor: ColorName.whiteBase,
          onPressed: () => ref
              .read(resultViewModelProvider.notifier)
              .navigateToResultDetailPage(context, quiz),
          childWidget: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'サックスブルー',
                style: TextStyle(color: ColorName.whiteBase, fontSize: 20),
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
      );
}
