import 'package:mottaina_eat/style/colors.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton(
      {
      super.key,
      this.onPressed,
      this.style,
      this.height,
      this.width,
      this.circularSize,
      this.backgroundColor,
      this.foregroundColor,
      this.textColor,
      this.side = BorderSide.none,
      this.isWithWidget = false,
      this.text,
      this.padding,
      this.elevation,
      this.shadowColor,
      this.isMini = false,
      this.isBottomNavigationBar = false,
      this.circularColor,
      this.isCircular = false,
      this.isFittedBox = false,
      this.isViewInsetsBottom = false,
      this.childWidget,
      this.borderRaius});

  final String? text;
  final TextStyle? style;
  final double? height;
  final double? width;
  final double? circularSize;
  final double? elevation;
  final double? borderRaius;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Color? shadowColor;
  final Color? circularColor;
  final Color? textColor;
  final BorderSide side;
  final VoidCallback? onPressed;
  final EdgeInsetsGeometry? padding;
  final Widget? childWidget;
  final bool isMini;
  final bool isBottomNavigationBar;
  final bool isCircular;
  final bool isFittedBox;
  final bool isViewInsetsBottom;
  final bool isWithWidget;

  @override
  Widget build(BuildContext context) => SizedBox(
        width: width,
        height: height,
        child: ElevatedButton(
          onPressed: onPressed ?? (){},
          style: ElevatedButton.styleFrom(
            elevation: elevation,
            backgroundColor: backgroundColor,
            foregroundColor: foregroundColor,
            padding: padding ??
                const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            side: side,
            shadowColor: shadowColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRaius ?? 0)),
          ),
          child: isWithWidget
              ? childWidget
              : FittedBox(
                  child: Text(
                    text!,
                    style: style ??
                        const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: ColorName.black2,
                        ),
                    textAlign: TextAlign.center,
                  ),
                ),
        ),
      );
}
