///////// a. パッケージをインポートし、自動生成されるファイルを記述 /////////
import 'package:freezed_annotation/freezed_annotation.dart';

// 生成されるdartファイルを記述
part 'domain.freezed.dart';
part 'domain.g.dart';
///////// b. コード生成するためのクラスを作成 /////////

// freezedでコード生成するために「@freezed」を記述

@freezed
class QuizClass with _$QuizClass {
  // withの後には「_$[class name]」の形式で記述

  // プロパティを指定
  const factory QuizClass({
    required String id,
    String? explanation,
    String? quizStatement,
    String? trueChoice,
    String? falseChoice1,
    String? falseChoice2,
    String? falseChoice3,
    String? url,
    String? photoUrl,
    int? correctCount,
    int? incorrectCount, 
  }) = _QuizClass;
  factory QuizClass.fromJson(Map<String, dynamic> json) =>
      _$QuizClassFromJson(json);

  static String collectionName = 'quiz';
}
