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
            borderRaius: 20,
            isCircular: false,
            backgroundColor: Colors.white,
            onPressed: onPressed ?? () {},
            width: MediaQuery.of(context).size.width * 0.92,
            height: MediaQuery.of(context).size.height * 0.08,
            text: text,
            textColor: Colors.black,

            elevation: 1, // 影の設定
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
        ],
      );
}
