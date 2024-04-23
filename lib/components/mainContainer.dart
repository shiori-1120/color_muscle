import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:mottaina_eat/style/colors.dart';

class mainContainer extends StatelessWidget {
  const mainContainer({
    super.key,
    this.children,
    this.color,
    this.width,
    this.height,
    this.text,
    this.padding,
    this.borderRadius,
  });
  final Widget? children;
  final Color? color;
  final String? text;
  final double? width;
  final double? height;
  final double? padding;
  final double? borderRadius;
  @override
  Widget build(BuildContext context) => Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius ?? 20),
        color: color ?? ColorName.white.withOpacity(0.8),
      ),
      width: width??MediaQuery.of(context).size.width * 0.93,
      height: height,
      padding: EdgeInsets.all(padding ?? 10),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(text ?? ''),
            children ?? const SizedBox(),
          ]));
}
