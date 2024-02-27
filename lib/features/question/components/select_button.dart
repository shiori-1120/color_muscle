import 'package:color_muscle/components/primary_button.dart';
import 'package:color_muscle/features/question/page/question.dart';
import 'package:color_muscle/style/colors.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:color_muscle/features/top/view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SelectButton extends ConsumerWidget {
  const SelectButton(
    this.onPressed,
    this.text, {
    super.key,
  });

  final String text;
  final VoidCallback? onPressed;
  
  @override
  Widget build(BuildContext context, WidgetRef ref) => PrimaryButton(
        isCircular: false,
        backgroundColor: ColorName.greyBase,
        onPressed: onPressed,
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.07,
        text: text,
      );
}
