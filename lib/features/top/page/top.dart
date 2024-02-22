import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:color_muscle/features/top/view_model.dart';
import 'package:color_muscle/style/colors.dart';
import 'package:color_muscle/style/styles.dart';


class TopPage extends ConsumerWidget {
  const TopPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(topViewModelProvider);

    return data.when(
      data: (data) => Scaffold(
        backgroundColor: ColorName.backGroundYellow,
        appBar: const OriginalAppBar(),
        body: Stack(
          children: [
            Column(
              children: [
                const Padding(padding: EdgeInsets.all(14)),

                /// 名前
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Text(
                    data.storeClass.name ?? '',
                    textAlign: TextAlign.center,
                    style: Styles.detailStoreName,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(height: 12),

                /// 画像部分
                RandomStoreImagePart(
                  storePhotoUrl: data.storeClass.photo_url ?? '',
                ),
                const SizedBox(height: 14),

                /// タグ
                TagsContainerPart(formattedTags: data.storeClass.tags ?? []),
                const SizedBox(height: 10),

                /// 営業時間・営業日
                RandomStoreTimePart(
                  openTime: data.storeClass.formattedOpenTime,
                  closeTime: data.storeClass.formattedCloseTime,
                  openTimeSecond: data.storeClass.formattedOpenTimeSecond,
                  closeTimeSecond: data.storeClass.formattedCloseTimeSecond,
                  remarksTime: data.storeClass.remarksTime,
                ),
                const SizedBox(height: 10),

                /// くわしくみる
                StoreButton(documentId: data.storeClass.id),
                const SizedBox(height: 2),

                ///　ルーレットを回す
                const RouletteButton(),
              ],
            ),
            if (data.isActiveAnimation)
              Container(
                width: double.infinity,
                color: ColorName.backGroundYellow,
                child: const RiveAnimation.asset(
                  'assets/rive/ishibashi_roulette.riv',
                ),
              ),
          ],
        ),
      ),
      error: (error, stackTrace) => Container(),
      loading: Container.new,
    );
  }
}
