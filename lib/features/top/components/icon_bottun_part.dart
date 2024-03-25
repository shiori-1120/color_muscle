import 'package:color_muscle/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class IconButtonPart extends ConsumerWidget {
  const IconButtonPart({
    super.key,
    this.onPressed,
    this.icon,
  });

  final VoidCallback? onPressed;
  final Widget? icon;

  @override
  Widget build(BuildContext context, WidgetRef ref) => Container(
        width: 40,
        height: 40,
        decoration: const BoxDecoration(
            color: ColorName.greySecondary, shape: BoxShape.circle),
        child: IconButton(
          onPressed: onPressed,
          icon: icon ?? const SizedBox(),
        ),
      );
}
