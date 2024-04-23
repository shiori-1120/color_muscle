import 'package:mottaina_eat/components/primary_button.dart';
import 'package:mottaina_eat/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mottaina_eat/style/styles.dart';
import 'package:url_launcher/url_launcher.dart';

class linkButton extends ConsumerWidget {
  const linkButton({
    required this.url,
    this.text,
    super.key,
  });

  final String url;
  final String? text;

  @override
  Widget build(BuildContext context, WidgetRef ref) => PrimaryButton(
        onPressed: () {
          final webUrl = Uri.parse(url);
          launchUrl(webUrl);
        },
        elevation: 0,
        width: MediaQuery.of(context).size.width * 0.29,
        height: 50,
        text: text,
        style: Styles.twentyEight,
        borderRaius: 20,
        backgroundColor: ColorName.eatOrange.withOpacity(0.8),
        textColor: ColorName.black2,
      );
}
