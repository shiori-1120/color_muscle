// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'domain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuizClass _$QuizClassFromJson(Map<String, dynamic> json) {
  return _QuizClass.fromJson(json);
}

/// @nodoc
mixin _$QuizClass {
  String get id => throw _privateConstructorUsedError;
  String? get explanation => throw _privateConstructorUsedError;
  String? get quizStatement => throw _privateConstructorUsedError;
  String? get trueChoice => throw _privateConstructorUsedError;
  String? get falseChoice1 => throw _privateConstructorUsedError;
  String? get falseChoice2 => throw _privateConstructorUsedError;
  String? get falseChoice3 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuizClassCopyWith<QuizClass> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizClassCopyWith<$Res> {
  factory $QuizClassCopyWith(QuizClass value, $Res Function(QuizClass) then) =
      _$QuizClassCopyWithImpl<$Res, QuizClass>;
  @useResult
  $Res call(
      {String id,
      String? explanation,
      String? quizStatement,
      String? trueChoice,
      String? falseChoice1,
      String? falseChoice2,
      String? falseChoice3});
}

/// @nodoc
class _$QuizClassCopyWithImpl<$Res, $Val extends QuizClass>
    implements $QuizClassCopyWith<$Res> {
  _$QuizClassCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? explanation = freezed,
    Object? quizStatement = freezed,
    Object? trueChoice = freezed,
    Object? falseChoice1 = freezed,
    Object? falseChoice2 = freezed,
    Object? falseChoice3 = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      explanation: freezed == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String?,
      quizStatement: freezed == quizStatement
          ? _value.quizStatement
          : quizStatement // ignore: cast_nullable_to_non_nullable
              as String?,
      trueChoice: freezed == trueChoice
          ? _value.trueChoice
          : trueChoice // ignore: cast_nullable_to_non_nullable
              as String?,
      falseChoice1: freezed == falseChoice1
          ? _value.falseChoice1
          : falseChoice1 // ignore: cast_nullable_to_non_nullable
              as String?,
      falseChoice2: freezed == falseChoice2
          ? _value.falseChoice2
          : falseChoice2 // ignore: cast_nullable_to_non_nullable
              as String?,
      falseChoice3: freezed == falseChoice3
          ? _value.falseChoice3
          : falseChoice3 // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizClassImplCopyWith<$Res>
    implements $QuizClassCopyWith<$Res> {
  factory _$$QuizClassImplCopyWith(
          _$QuizClassImpl value, $Res Function(_$QuizClassImpl) then) =
      __$$QuizClassImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? explanation,
      String? quizStatement,
      String? trueChoice,
      String? falseChoice1,
      String? falseChoice2,
      String? falseChoice3});
}

/// @nodoc
class __$$QuizClassImplCopyWithImpl<$Res>
    extends _$QuizClassCopyWithImpl<$Res, _$QuizClassImpl>
    implements _$$QuizClassImplCopyWith<$Res> {
  __$$QuizClassImplCopyWithImpl(
      _$QuizClassImpl _value, $Res Function(_$QuizClassImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? explanation = freezed,
    Object? quizStatement = freezed,
    Object? trueChoice = freezed,
    Object? falseChoice1 = freezed,
    Object? falseChoice2 = freezed,
    Object? falseChoice3 = freezed,
  }) {
    return _then(_$QuizClassImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      explanation: freezed == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String?,
      quizStatement: freezed == quizStatement
          ? _value.quizStatement
          : quizStatement // ignore: cast_nullable_to_non_nullable
              as String?,
      trueChoice: freezed == trueChoice
          ? _value.trueChoice
          : trueChoice // ignore: cast_nullable_to_non_nullable
              as String?,
      falseChoice1: freezed == falseChoice1
          ? _value.falseChoice1
          : falseChoice1 // ignore: cast_nullable_to_non_nullable
              as String?,
      falseChoice2: freezed == falseChoice2
          ? _value.falseChoice2
          : falseChoice2 // ignore: cast_nullable_to_non_nullable
              as String?,
      falseChoice3: freezed == falseChoice3
          ? _value.falseChoice3
          : falseChoice3 // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuizClassImpl implements _QuizClass {
  const _$QuizClassImpl(
      {required this.id,
      this.explanation,
      this.quizStatement,
      this.trueChoice,
      this.falseChoice1,
      this.falseChoice2,
      this.falseChoice3});

  factory _$QuizClassImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizClassImplFromJson(json);

  @override
  final String id;
  @override
  final String? explanation;
  @override
  final String? quizStatement;
  @override
  final String? trueChoice;
  @override
  final String? falseChoice1;
  @override
  final String? falseChoice2;
  @override
  final String? falseChoice3;

  @override
  String toString() {
    return 'QuizClass(id: $id, explanation: $explanation, quizStatement: $quizStatement, trueChoice: $trueChoice, falseChoice1: $falseChoice1, falseChoice2: $falseChoice2, falseChoice3: $falseChoice3)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizClassImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.explanation, explanation) ||
                other.explanation == explanation) &&
            (identical(other.quizStatement, quizStatement) ||
                other.quizStatement == quizStatement) &&
            (identical(other.trueChoice, trueChoice) ||
                other.trueChoice == trueChoice) &&
            (identical(other.falseChoice1, falseChoice1) ||
                other.falseChoice1 == falseChoice1) &&
            (identical(other.falseChoice2, falseChoice2) ||
                other.falseChoice2 == falseChoice2) &&
            (identical(other.falseChoice3, falseChoice3) ||
                other.falseChoice3 == falseChoice3));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, explanation, quizStatement,
      trueChoice, falseChoice1, falseChoice2, falseChoice3);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizClassImplCopyWith<_$QuizClassImpl> get copyWith =>
      __$$QuizClassImplCopyWithImpl<_$QuizClassImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizClassImplToJson(
      this,
    );
  }
}

abstract class _QuizClass implements QuizClass {
  const factory _QuizClass(
      {required final String id,
      final String? explanation,
      final String? quizStatement,
      final String? trueChoice,
      final String? falseChoice1,
      final String? falseChoice2,
      final String? falseChoice3}) = _$QuizClassImpl;

  factory _QuizClass.fromJson(Map<String, dynamic> json) =
      _$QuizClassImpl.fromJson;

  @override
  String get id;
  @override
  String? get explanation;
  @override
  String? get quizStatement;
  @override
  String? get trueChoice;
  @override
  String? get falseChoice1;
  @override
  String? get falseChoice2;
  @override
  String? get falseChoice3;
  @override
  @JsonKey(ignore: true)
  _$$QuizClassImplCopyWith<_$QuizClassImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
