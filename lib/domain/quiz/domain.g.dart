// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'domain.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizClassImpl _$$QuizClassImplFromJson(Map<String, dynamic> json) =>
    _$QuizClassImpl(
      id: json['id'] as String,
      explanation: json['explanation'] as String?,
      quizStatement: json['quizStatement'] as String?,
      trueChoice: json['trueChoice'] as String?,
      falseChoice1: json['falseChoice1'] as String?,
      falseChoice2: json['falseChoice2'] as String?,
      falseChoice3: json['falseChoice3'] as String?,
      correctCount: json['correctCount'] as int?,
      incorrectCount: json['incorrectCount'] as int?,
    );

Map<String, dynamic> _$$QuizClassImplToJson(_$QuizClassImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'explanation': instance.explanation,
      'quizStatement': instance.quizStatement,
      'trueChoice': instance.trueChoice,
      'falseChoice1': instance.falseChoice1,
      'falseChoice2': instance.falseChoice2,
      'falseChoice3': instance.falseChoice3,
      'correctCount': instance.correctCount,
      'incorrectCount': instance.incorrectCount,
    };
