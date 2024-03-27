import 'package:color_muscle/features/top/grade_type.dart';
import 'package:color_muscle/features/top/question_type.dart';
import 'package:flutter/material.dart';
import 'package:color_muscle/features/question/state.dart';
import 'package:color_muscle/features/result/page/result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'view_model.g.dart';

@riverpod
class QuestionViewModel extends _$QuestionViewModel {
  @override
  FutureOr<QuestionState> build() async {
    const state = QuestionState(
        questionNumber: 3,
        questionType: QuestionType.colorToName,
        gradeType: GradeType.gradeThird);
    return state;
  }

  Future<void> showIconAndPopup(BuildContext context) async {
    final data = state.requireValue;
    state = AsyncData(data.copyWith(isTrue: true, screenEnabled: false));
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
