import 'dart:math';

import 'package:color_muscle/components/primary_app_bar.dart';
import 'package:color_muscle/components/secondary_app_bar.dart';
import 'package:color_muscle/features/question/components/select_button.dart';
import 'package:color_muscle/features/result/page/result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:color_muscle/features/top/view_model.dart';
import 'package:color_muscle/style/colors.dart';
import 'package:color_muscle/style/styles.dart';

class QuestionPage extends StatefulWidget {
  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {


  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: const SecondaryAppBar(),
        body: Stack(children: [
          Column(
            children: [
              const SizedBox(height: 20),
              const Text(
                '1問/5問',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(height: 100, width: 100, color: Colors.amber),
                ],
              ),
              const SizedBox(height: 20),
              const SizedBox(
                height: 100,
                width: 800,
              ),
              SelectButton(_screenEnabled ? _showIconAndPopup : null, '選択肢１'),
              const SizedBox(height: 20),
              SelectButton(_screenEnabled ? _showIconAndPopup : null, '選択肢２'),
              const SizedBox(height: 20),
              SelectButton(_screenEnabled ? _showIconAndPopup : null, '選択肢３'),
              const SizedBox(height: 20),
              SelectButton(_screenEnabled ? _showIconAndPopup : null, '選択肢４'),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
          if (_isTrue) // 画面が無効の場合にのみアイコンを表示
            const Center(
              child: Icon(
                Icons.circle_outlined,
                size: 230,
                color: ColorName.trueRed,
              ),
            ),
          if (_isFalse)
            const Center(
              child: Icon(
                Icons.cancel_outlined,
                size: 100,
                color: ColorName.falseBlue,
              ),
            ),
        ]),
      ),
    );
  }
}
