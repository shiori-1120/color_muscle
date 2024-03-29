import 'package:color_muscle/components/primary_button.dart';
import 'package:color_muscle/components/secondary_app_bar.dart';
import 'package:color_muscle/features/result_details/view_model.dart';
import 'package:color_muscle/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ResultDetailPage extends ConsumerWidget {
  const ResultDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(resultDetailViewModelProvider);
    return state.when(
      data: (data) => PopScope(
        canPop: false,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: const SecondaryAppBar(),
          body: Center(
            child: Column(
              children: [
                const SizedBox(height: 60),
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width * 0.9,
                  color: ColorName.falseBlue,
                ),
                const SizedBox(height: 20),
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width * 0.9,
                  color: ColorName.greyBase,
                  child: const SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('浅葱色',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),
                          ),
                            Row(
                              children: [
                                Text('カラーコード：＃'),
                                  Text('FFFFFF'),
                              ],
                            ),
                                Row(
                              children: [
                                Text('PCCS：'),
                                  Text('？？'),
                              ],
                            ),
                                Row(
                              children: [
                                Text('級：'),
                                  Text('3級'),
                              ],
                            ),
                                Row(
                              children: [
                                Text('由来：'),
                                  Text('ほげほげhogehoge...'),
                              ],
                            ),
                        
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                PrimaryButton(
                  onPressed: () => ref
                      .read(resultDetailViewModelProvider.notifier)
                      .navigateToResultPage(context),
                  text: '結果一覧に戻る',
                  width: MediaQuery.of(context).size.width * 0.8,
                  textColor: ColorName.black2,
                  borderRaius: 30,
                ),
              ],
            ),
          ),
        ),
      ),
      error: (error, StackTrace) => const SizedBox(),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
