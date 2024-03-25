import 'package:color_muscle/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TextPart extends ConsumerWidget {
   const TextPart({
    required this.text,
    super.key,
    
  });

  final String text;

  @override
  Widget build(BuildContext context, WidgetRef ref) => Container(
        width: 150,
        height: 40,
        decoration: BoxDecoration(
          color: ColorName.greySecondary,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            text,
            textAlign: TextAlign.center,
          ),
        ),
      );
}
