import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';
import 'package:color_muscle/features/question/state.dart';
import 'package:color_muscle/features/result/page/result.dart';
import 'package:color_muscle/features/top/grade_type.dart';
import 'package:color_muscle/features/top/question_type.dart';

class QuestionViewModel extends StateNotifier<QuestionState> {
  final BuildContext context;

  QuestionViewModel(this.context)
      : super(QuestionState(
          questionNumber: 3,
          questionType: QuestionType.colorToName,
          gradeType: GradeType.gradeThird,
          screenEnabled: true,
          isTrue: false,
          isFalse: false,
          backgroundcolor: Colors.white,
        ));

  Future<void> showIconAndPopup() async {
    state = state.copyWith(isTrue: true, screenEnabled: false);
    await Future.delayed(const Duration(seconds: 1), () {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return PopScope(
            canPop: false,
            child: AlertDialog(
              title: const Text('ポップアップ'),
              content: const Text('ここに答えの詳細が表示されます'),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ResultPage(),
                      ),
                    );
                  },
                  child: const Text('次の問題へ進む'),
                ),
              ],
            ),
          );
        },
      );
    });
  }
}
