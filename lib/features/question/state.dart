import 'package:color_muscle/domain/color/domain.dart';
import 'package:color_muscle/features/top/grade_type.dart';
import 'package:color_muscle/features/top/question_type.dart';
import 'package:color_muscle/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// 生成されるdartファイルを記述
part 'state.freezed.dart';

// freezedでコード生成するために「@freezed」を記述
@freezed
class QuestionState with _$QuestionState {
  // withの後には「_$[class name]」の形式で記述

  // プロパティを指定
  factory QuestionState({
    required int questionNumber,
    required QuestionType questionType,
    required GradeType gradeType,
    @Default(ColorName.whiteBase) Color backgroundcolor, 
    @Default(true) bool screenEnabled, // デフォルト値を指定
    @Default(false) bool isTrue,
    @Default(false) bool isFalse,
  }) = _QuestionState;
}
