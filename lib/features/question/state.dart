import 'dart:html';

import 'package:mottaina_eat/domain/quiz/domain.dart';
import 'package:mottaina_eat/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mottaina_eat/features/question/choice_class.dart';

// 生成されるdartファイルを記述
part 'state.freezed.dart';

// freezedでコード生成するために「@freezed」を記述
@freezed
class QuestionState with _$QuestionState {
  // withの後には「_$[class name]」の形式で記述

  // プロパティを指定
  factory QuestionState({

    @Default(QuizClass(
        id: '1',
        explanation: 'エラー',
        quizStatement: 'エラー',
        trueChoice: 'エラー',
        falseChoice1: 'エラー',
        falseChoice2: 'エラー',
        falseChoice3: 'エラー'))
     QuizClass? quiz,
    @Default(ColorName.whiteBase) Color? backgroundcolor,
    @Default(true) bool screenEnabled, // デフォルト値を指定
    @Default(false) bool isTrue,
    @Default(false) bool isFalse,
    required List<ChoiceClass> choiceClass,
  }) = _QuestionState;
}
