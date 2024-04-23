import 'package:mottaina_eat/components/primary_button.dart';
import 'package:mottaina_eat/features/question/page/question.dart';
import 'package:mottaina_eat/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mottaina_eat/style/styles.dart';

class TopButton extends ConsumerWidget {
  const TopButton({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) => PrimaryButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const QuestionPage(),
          ),
        ),
        elevation: 0,
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.07,
        text: '問題をはじめる',
        style: Styles.twentyEight,
        borderRaius: 20,
        backgroundColor: ColorName.eatOrange.withOpacity(0.8),
        textColor: ColorName.black2,
      );
}
