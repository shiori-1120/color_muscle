import 'package:mottaina_eat/components/mainContainer.dart';
import 'package:mottaina_eat/features/top/components/app_container.dart';
import 'package:mottaina_eat/features/top/components/club_detail_part.dart';
import 'package:mottaina_eat/features/top/components/quiz_part.dart';
import 'package:mottaina_eat/features/top/view_model.dart';
import 'package:flutter/material.dart';
import 'package:mottaina_eat/components/primary_app_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mottaina_eat/style/colors.dart';

class TopPage extends ConsumerWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(topViewModelProvider);

    return state.when(
      data: (data) => Scaffold(
        appBar: const PrimaryAppBar(),
        body: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://lh3.googleusercontent.com/pw/AP1GczMPy-QZej8xgkARCbjBi4T3rcn2FCINJ1IvFB4RQUKsQ6Lki5568dmqMYrZ4Trh_Rmwg4Cv2y_SF-MzaMuz6VCuBnEbyPBDl2M4Wq3_T9ZWOcseF81Y15-yYUnT5p_NxIS3oKXgHuWWdVc0Nop_WzW8qg=w598-h846-s-no-gm?authuser=0'),
                fit: BoxFit.cover,
              ),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 15),
                ClubDetail(),
                SizedBox(height: 15),
                Quiz(),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    mainContainer(
                      children: Column(
                        children: [
                          Text('↓ ぽちぽちのつどいのアプリ紹介 ↓',
                          style: TextStyle(color: ColorName.black2,fontWeight: FontWeight.bold,fontSize: 18),),
                          SizedBox(height: 10),
                          appContainer(
                            title: '石橋ごはんルーレット',
                            explanation: 'ここにはアプリの簡単な説明が入ります',
                            iconUrl:
                                'https://lh3.googleusercontent.com/pw/AP1GczNmmWEdmdjmoZ4WAGLLXAOTKrf0LNrSOkrxsf8J-_F1SwZ5Yb7mKx89xkVFGn1wva9ocG4HP4xBJdUKWMkdJxwn6yPvaZC6iUNvYOsBnaD0aMUIpppbBBt18ADU-s4N7TWt1D5GJLSaWrIB4PG3vrFc3w=w500-h500-s-no-gm?authuser=0',
                            iosUrl:
                                'https://apps.apple.com/jp/app/%E7%9F%B3%E6%A9%8B%E3%81%94%E3%81%AF%E3%82%93%E3%83%AB%E3%83%BC%E3%83%AC%E3%83%83%E3%83%88/id6469585028',
                            androidUrl:
                                'https://play.google.com/store/apps/details?id=com.potipoti.ishibashi',
                          ),
                          SizedBox(height: 5),
                          appContainer(
                            title: '大学と大学院の授業過去問シェアアプリ',
                            explanation:
                                'フェアな大学生活を送れるようにしたいと思いこのアプリを作りました。より多くの人に過去問を!!自分の所属の大学のみログインすることができて自分の大学の過去問を投稿閲覧することができます。',
                            iconUrl:
                                'https://is1-ssl.mzstatic.com/image/thumb/Purple221/v4/e9/40/a5/e940a5a6-7a74-32c8-c3bf-4a9458f7adc8/AppIcon-0-0-1x_U007emarketing-0-7-0-85-220.png/217x0w.webp',
                            iosUrl:
                                'https://apps.apple.com/jp/app/%E5%A4%A7%E5%AD%A6%E3%81%A8%E5%A4%A7%E5%AD%A6%E9%99%A2%E3%81%AE%E6%8E%88%E6%A5%AD%E9%81%8E%E5%8E%BB%E5%95%8F%E3%82%B7%E3%82%A7%E3%82%A2%E3%82%A2%E3%83%97%E3%83%AA/id6476320248',
                          ),
                          SizedBox(height: 5),
                          appContainer(
                            title: 'みそしるbot',
                            explanation:
                                '「今日のみそしる」の具材と隠し味を決めるアプリです。Twitterを始めとしたSNSで「今日のみそしる」を共有できます。',
                            iconUrl:
                                'https://is1-ssl.mzstatic.com/image/thumb/Purple116/v4/ae/de/c8/aedec8ca-ca45-07c0-cc10-7e60d23291a4/AppIcon-0-0-1x_U007emarketing-0-0-0-7-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/217x0w.webp',
                            iosUrl:
                                'https://apps.apple.com/jp/app/%E3%81%BF%E3%81%9D%E3%81%97%E3%82%8Bbot/id6447541935',
                          ),
                          SizedBox(height: 5),
                          appContainer(
                            title: 'ほめてくれるやつ',
                            explanation: 'ここにはアプリの簡単な説明が入ります',
                            iconUrl:
                                'https://stv-tech.co.jp/wp-content/uploads/2023/08/1_5-aoK8IBmXve5whBQM90GA.png',
                            webUrl: 'https://praiseapp3.web.app/',
                          ),
                          SizedBox(height: 5),
                          appContainer(
                            title: 'ブクピク',
                            explanation:
                                'ブクピクは、「本とのホントの巡り合い」を実現するアプリです。【機能】・ランダムに１冊の本を選びます。・読みたい本をブックリストとしてまとめておくことができます。',
                            iconUrl:
                                'https://is1-ssl.mzstatic.com/image/thumb/Purple112/v4/2c/90/ea/2c90ea28-86b4-31c6-6d3e-de352aa55ec1/AppIcon-0-0-1x_U007emarketing-0-7-0-0-85-220.png/230x0w.webp',
                            iosUrl:
                                'https://apps.apple.com/in/app/%E3%83%96%E3%82%AF%E3%83%94%E3%82%AF/id6478705476',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
      error: (error, stackTrace) => const SizedBox(),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
