import 'package:mottaina_eat/components/primary_button.dart';
import 'package:mottaina_eat/features/question/page/question.dart';
import 'package:mottaina_eat/features/top/grade_type.dart';
import 'package:mottaina_eat/features/top/question_type.dart';
import 'package:mottaina_eat/features/top/view_model.dart';
import 'package:mottaina_eat/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TopButton extends ConsumerWidget {

  const TopButton({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) => PrimaryButton(
        onPressed: () =>  Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>  QuestionPage(),
      ),
    ),
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.07,
        text: '問題を始める',
        borderRaius: 40,
        backgroundColor: ColorName.greyBase,
        textColor: ColorName.black2,
      );
}
