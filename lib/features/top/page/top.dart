import 'package:mottaina_eat/components/mainContainer.dart';
import 'package:mottaina_eat/features/top/components/club_detail_part.dart';
import 'package:mottaina_eat/features/top/components/link_button.dart';
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 15),
                const ClubDetail(),
                const SizedBox(height: 15),
                const Quiz(),
                const SizedBox(height: 15),
                const Quiz(),
                const SizedBox(height: 15),
                const Quiz(),
                const SizedBox(height: 15),
                const Quiz(),
                const SizedBox(height: 15),
                const Quiz(),
                const SizedBox(height: 15),
                const Quiz(),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    mainContainer(
                      children: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    height:
                                        MediaQuery.of(context).size.width * 0.2,
                                    width:
                                        MediaQuery.of(context).size.width * 0.2,
                                    child: Image.network(
                                        'https://lh3.googleusercontent.com/pw/AP1GczMj1cq2im7y0Icnpo0AgvbniOy672ppgj6YBJBwJaoLRYmot58_1hxZl5NAqc1kpXpzCjPqD5owFpty0yUSgLB9Mg99jlY-H1UYSKHEUV1i-Dd9MxFJ1vVLUYYCykJOMhciAWFatL__-_FdAT00V8mxMA=w384-h384-s-no-gm?authuser=0'),
                                  ),
                                  mainContainer(
                                    height:
                                        MediaQuery.of(context).size.width * 0.2,
                                    width:
                                        MediaQuery.of(context).size.width * 0.6,
                                    color: ColorName.potipotiBlue,
                                    children: const Text('ここにはアプリの簡単な説明が入ります'),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.2,
                                      child: const Text('アプリのタイトル')),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.6,
                                    child: const Padding(
                                      padding:
                                          EdgeInsets.only(top: 10, bottom: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          linkButton(
                                            url:
                                                'https://zenn.dev/k9i/articles/e95423b1542a7c',
                                            text: 'iOS',
                                          ),
                                          linkButton(
                                            url:
                                                'https://zenn.dev/k9i/articles/e95423b1542a7c',
                                            text: 'android',
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
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
