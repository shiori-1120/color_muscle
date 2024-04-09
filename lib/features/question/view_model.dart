import 'package:mottaina_eat/domain/quiz/domain.dart';
import 'package:mottaina_eat/domain/quiz/repository.dart';
import 'package:flutter/material.dart';
import 'package:mottaina_eat/features/question/state.dart';
import 'package:mottaina_eat/features/result/page/result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:logger/logger.dart'; // ロガーパッケージをインポート
part 'view_model.g.dart';

@riverpod
class QuestionViewModel extends _$QuestionViewModel {
  QuizRepo get quizRepo => ref.read(quizRepoProvider.notifier);

  final _logger = Logger();

@override
  FutureOr<QuestionState> build() async {
    try {
      final QuizClass quiz = await quizRepo.getFirstQuiz();
      _logger.i('取得したQuizClass: $quiz'); // クイズデータをログ出力

      final state = QuestionState(
        quiz: quiz,
      );

      _logger.i('生成したQuestionState: $state'); // 生成したステートをログ出力
      return state;
    } catch (e) {
      _logger.e('エラー発生: $e'); // 例外発生時のログ出力
      rethrow;
    }
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
              content: const Text('1'),
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