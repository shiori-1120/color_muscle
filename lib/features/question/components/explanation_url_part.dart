import 'package:mottaina_eat/components/primary_button.dart';
import 'package:mottaina_eat/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mottaina_eat/style/styles.dart';
import 'package:url_launcher/url_launcher.dart';

class explanationUrlPart extends ConsumerWidget {
  const explanationUrlPart({
    this.url,
    super.key,
  });

  final String? url;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Widget buttonWidget;
    if (url != null && url!.isNotEmpty) {
      buttonWidget = Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          PrimaryButton(
            width: 230,
            height: 30,
            onPressed: () {
              final webUrl = Uri.parse(url!);
              launchUrl(webUrl);
            },
            elevation: 0,
            text: 'サイトで詳しく見る！',
            style: Styles.twentyEight,
            borderRaius: 20,
            backgroundColor: ColorName.eatOrange.withOpacity(0.8),
            textColor: ColorName.black2,
          ),
        ],
      );
    } else {
      buttonWidget = const SizedBox(
        width: 0,
        height: 0,
      );
    }

    return buttonWidget;
  }
}
