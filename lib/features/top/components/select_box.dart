import 'package:mottaina_eat/features/top/components/icon_bottun_part.dart';
import 'package:mottaina_eat/features/top/components/text_part.dart';
import 'package:mottaina_eat/features/top/question_type.dart';
import 'package:mottaina_eat/features/top/view_model.dart';
import 'package:mottaina_eat/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SelectBox extends ConsumerWidget {
  const SelectBox({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(topViewModelProvider);
    return state.when(
      data: (data) => Container(
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
          color: ColorName.greyBase,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButtonPart(
                  onPressed: () => ref
                      .read(topViewModelProvider.notifier)
                      .decrementQuestionNumber(data.questionNumber),
                  icon: const FaIcon(FontAwesomeIcons.minus),
                ),
                const SizedBox(
                  width: 10,
                ),
                TextPart(
                  text: '${data.questionNumber}',
                ),
                const SizedBox(
                  width: 10,
                ),
                IconButtonPart(
                  onPressed: () => ref
                      .read(topViewModelProvider.notifier)
                      .incrementQuestionNumber(data.questionNumber),
                  icon: const FaIcon(FontAwesomeIcons.plus),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButtonPart(
                  onPressed: () => ref
                      .read(topViewModelProvider.notifier)
                      .changeQuestionTypeRight(data.questionType),
                  icon: const FaIcon(FontAwesomeIcons.arrowLeft),
                ),
                const SizedBox(
                  width: 10,
                ),
                TextPart(text: data.questionType.questionTitle),
                const SizedBox(
                  width: 10,
                ),
                IconButtonPart(
                  onPressed: () => ref
                      .read(topViewModelProvider.notifier)
                      .changeQuestionTypeLeft(data.questionType),
                  icon: const FaIcon(FontAwesomeIcons.arrowRight),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButtonPart(
                  onPressed: () => ref
                      .read(topViewModelProvider.notifier)
                      .downGradeTypeRight(data.gradeType),
                  icon: const FaIcon(FontAwesomeIcons.arrowLeft),
                ),
                const SizedBox(
                  width: 10,
                ),
                TextPart(text: data.gradeType.gradeTitle),
                const SizedBox(
                  width: 10,
                ),
                IconButtonPart(
                  onPressed: () => ref
                      .read(topViewModelProvider.notifier)
                      .upGradeType(data.gradeType),
                  icon: const FaIcon(FontAwesomeIcons.arrowRight),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
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
