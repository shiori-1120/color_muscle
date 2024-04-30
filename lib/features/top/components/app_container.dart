import 'package:mottaina_eat/components/mainContainer.dart';
import 'package:mottaina_eat/features/top/components/link_button.dart';
import '../../../style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class appContainer extends ConsumerWidget {
  const appContainer({
    this.title,
    this.explanation,
    this.iconUrl,
    this.iosUrl,
    this.androidUrl,
    this.webUrl,
    super.key,
  });

  final String? title;
  final String? explanation;
  final String? iconUrl;
  final String? iosUrl;
  final String? androidUrl;
  final String? webUrl;

  @override
  Widget build(BuildContext context, WidgetRef ref) => Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.width * 0.2,
                width: MediaQuery.of(context).size.width * 0.2,
                child: Image.network(iconUrl ?? ''),
              ),
              const SizedBox(
                width: 5,
              ),
              mainContainer(
                padding: 10,
                height: MediaQuery.of(context).size.width * 0.2,
                width: MediaQuery.of(context).size.width * 0.6,
                color: ColorName.potipotiBlue,
                children: Text(
                  explanation ?? '',
                  maxLines: 4,
                  style: const TextStyle(
                    fontSize: 12,
                    color: ColorName.black2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.2,
                  child: Text(
                    title ?? '',
                    style: const TextStyle(
                        fontSize: 10, fontWeight: FontWeight.bold),
                  )),
              const SizedBox(
                width: 5,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      linkButton(
                        url: iosUrl ?? '',
                        text: 'iOS',
                      ),
                      linkButton(
                        url: androidUrl ?? '',
                        text: 'android',
                        width: 0,
                      ),
                        linkButton(
                        url: webUrl ?? '',
                        text: 'Web',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      );
}
