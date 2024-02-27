import 'dart:math';

import 'package:color_muscle/components/top_app_bar.dart';
import 'package:color_muscle/features/question/components/select_button.dart';
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
  get backgroundcolor => null;
  var _screenEnabled = true;

  void _showIconAndPopup() {
    setState(() {
      _screenEnabled = false;
    });
    Future.delayed(Duration(seconds: 2), () {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
                title: Text('ポップアップ'),
                content: Text('ポップアップが表示されました'),
                actions: <Widget>[
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                        setState(() {
                          _screenEnabled = true;
                        });
                      },
                      child: Text('閉じる'))
                ]);
          });
    });
  }

  @override
  Widget build(BuildContext context) {
    return 
    
    Scaffold(
      backgroundColor: Colors.white,
      appBar: const TopAppBar(),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Text(
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
          SelectButton(_screenEnabled ? _showIconAndPopup : null,'選択肢１'),
          const SizedBox(height: 20),
          SelectButton(_screenEnabled ? _showIconAndPopup : null,'選択肢２'),
          const SizedBox(height: 20),
          SelectButton(_screenEnabled ? _showIconAndPopup : null,'選択肢３'),
          const SizedBox(height: 20),
          SelectButton(_screenEnabled ? _showIconAndPopup : null,'選択肢４'),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
