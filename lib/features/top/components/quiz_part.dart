import 'package:mottaina_eat/components/mainContainer.dart';
import 'package:mottaina_eat/features/top/components/top_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Quiz extends ConsumerWidget {
  const Quiz({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) => Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          mainContainer(
            width: MediaQuery.of(context).size.width * 0.93,
            children: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('「もったいないーと」さんとのコラボ企画！食品ロスやもったいない―とについてのクイズに答えよう！なんとクイズに答えた人は模擬店のトッピング無料！！'),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TopButton(),
                ),
              ],
            ),
          ),
        ],
      );
}
