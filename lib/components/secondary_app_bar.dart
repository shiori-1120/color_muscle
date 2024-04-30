import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mottaina_eat/components/mainContainer.dart';
import 'package:mottaina_eat/components/primary_button.dart';
import 'package:mottaina_eat/style/colors.dart';
import 'package:mottaina_eat/features/question/view_model.dart';

class SecondaryAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const SecondaryAppBar({Key? key}) : super(key: key); // Keyを追加

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(questionViewModelProvider);

    return AppBar(
      automaticallyImplyLeading: false,
      iconTheme: const IconThemeData(color: ColorName.black2),
      backgroundColor: ColorName.eatOrange,
    
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    insetPadding: const EdgeInsets.only(left: 15, right: 15),
                    backgroundColor: const Color.fromARGB(204, 255, 203, 173),
                    content: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.height * 0.25,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                onPressed: () {
                                  Navigator.of(context).pop(); // ダイアログを閉じる
                                },
                                icon: const Icon(Icons.close, color: ColorName.black2), // バツのアイコン
                              ),
                            ],
                          ),
                          mainContainer(
                            width: MediaQuery.of(context).size.width * 0.8,
                            height: MediaQuery.of(context).size.height * 0.1,
                            children: 
                              const Text('クイズをやめますか？'),
                            
                          ),
                          PrimaryButton(
                            onPressed: () async {
                              await ref
                                  .read(questionViewModelProvider.notifier)
                                  .escape(context);
                            },
                            width: 150,
                            height: 40,
                            text: 'クイズをやめる', // ボタンテキストを追加
                            textColor: ColorName.black2,
                            borderRaius: 20, // borderRaiusをborderRadiusに修正
                            backgroundColor: Colors.white.withOpacity(0.8),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            icon: const FaIcon(
              Icons.logout,
              color: ColorName.black2,
              size: 30,
            ),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
