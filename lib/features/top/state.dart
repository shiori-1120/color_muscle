import 'package:color_muscle/features/top/grade_type.dart';
import 'package:color_muscle/features/top/question_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// 生成されるdartファイルを記述
part 'state.freezed.dart';

// freezedでコード生成するために「@freezed」を記述
@freezed
class TopState with _$TopState {
  // withの後には「_$[class name]」の形式で記述

  // プロパティを指定
  const factory TopState({
    required int questionNumber,
    required QuestionType questionType,
    required GradeType gradeType,

  }) = _TopState;
}
