import 'package:mottaina_eat/components/primary_button.dart';
import 'package:mottaina_eat/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SelectButton extends ConsumerWidget {
  const SelectButton(
    this.number,
    this.onPressed,
    this.text, {
    super.key,
  });

  final int number;
  final String text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) => Column(
        children: [
          PrimaryButton(
            isCircular: false,
            backgroundColor: ColorName.greyBase,
            onPressed: onPressed ?? () {},
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.07,
            text: text,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
        ],
      );
}
