// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QuestionState {
  int get questionNumber => throw _privateConstructorUsedError;
  QuestionType? get questionType => throw _privateConstructorUsedError;
  GradeType? get gradeType => throw _privateConstructorUsedError;
  Color get backgroundcolor => throw _privateConstructorUsedError;
  bool get screenEnabled => throw _privateConstructorUsedError; // デフォルト値を指定
  bool get isTrue => throw _privateConstructorUsedError;
  bool get isFalse => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuestionStateCopyWith<QuestionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionStateCopyWith<$Res> {
  factory $QuestionStateCopyWith(
          QuestionState value, $Res Function(QuestionState) then) =
      _$QuestionStateCopyWithImpl<$Res, QuestionState>;
  @useResult
  $Res call(
      {int questionNumber,
      QuestionType? questionType,
      GradeType? gradeType,
      Color backgroundcolor,
      bool screenEnabled,
      bool isTrue,
      bool isFalse});
}

/// @nodoc
class _$QuestionStateCopyWithImpl<$Res, $Val extends QuestionState>
    implements $QuestionStateCopyWith<$Res> {
  _$QuestionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionNumber = null,
    Object? questionType = freezed,
    Object? gradeType = freezed,
    Object? backgroundcolor = null,
    Object? screenEnabled = null,
    Object? isTrue = null,
    Object? isFalse = null,
  }) {
    return _then(_value.copyWith(
      questionNumber: null == questionNumber
          ? _value.questionNumber
          : questionNumber // ignore: cast_nullable_to_non_nullable
              as int,
      questionType: freezed == questionType
          ? _value.questionType
          : questionType // ignore: cast_nullable_to_non_nullable
              as QuestionType?,
      gradeType: freezed == gradeType
          ? _value.gradeType
          : gradeType // ignore: cast_nullable_to_non_nullable
              as GradeType?,
      backgroundcolor: null == backgroundcolor
          ? _value.backgroundcolor
          : backgroundcolor // ignore: cast_nullable_to_non_nullable
              as Color,
      screenEnabled: null == screenEnabled
          ? _value.screenEnabled
          : screenEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isTrue: null == isTrue
          ? _value.isTrue
          : isTrue // ignore: cast_nullable_to_non_nullable
              as bool,
      isFalse: null == isFalse
          ? _value.isFalse
          : isFalse // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionStateImplCopyWith<$Res>
    implements $QuestionStateCopyWith<$Res> {
  factory _$$QuestionStateImplCopyWith(
          _$QuestionStateImpl value, $Res Function(_$QuestionStateImpl) then) =
      __$$QuestionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int questionNumber,
      QuestionType? questionType,
      GradeType? gradeType,
      Color backgroundcolor,
      bool screenEnabled,
      bool isTrue,
      bool isFalse});
}

/// @nodoc
class __$$QuestionStateImplCopyWithImpl<$Res>
    extends _$QuestionStateCopyWithImpl<$Res, _$QuestionStateImpl>
    implements _$$QuestionStateImplCopyWith<$Res> {
  __$$QuestionStateImplCopyWithImpl(
      _$QuestionStateImpl _value, $Res Function(_$QuestionStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionNumber = null,
    Object? questionType = freezed,
    Object? gradeType = freezed,
    Object? backgroundcolor = null,
    Object? screenEnabled = null,
    Object? isTrue = null,
    Object? isFalse = null,
  }) {
    return _then(_$QuestionStateImpl(
      questionNumber: null == questionNumber
          ? _value.questionNumber
          : questionNumber // ignore: cast_nullable_to_non_nullable
              as int,
      questionType: freezed == questionType
          ? _value.questionType
          : questionType // ignore: cast_nullable_to_non_nullable
              as QuestionType?,
      gradeType: freezed == gradeType
          ? _value.gradeType
          : gradeType // ignore: cast_nullable_to_non_nullable
              as GradeType?,
      backgroundcolor: null == backgroundcolor
          ? _value.backgroundcolor
          : backgroundcolor // ignore: cast_nullable_to_non_nullable
              as Color,
      screenEnabled: null == screenEnabled
          ? _value.screenEnabled
          : screenEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isTrue: null == isTrue
          ? _value.isTrue
          : isTrue // ignore: cast_nullable_to_non_nullable
              as bool,
      isFalse: null == isFalse
          ? _value.isFalse
          : isFalse // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$QuestionStateImpl implements _QuestionState {
  _$QuestionStateImpl(
      {required this.questionNumber,
      this.questionType,
      this.gradeType,
      this.backgroundcolor = null,
      this.screenEnabled = true,
      this.isTrue = false,
      this.isFalse = false});

  @override
  final int questionNumber;
  @override
  final QuestionType? questionType;
  @override
  final GradeType? gradeType;
  @override
  @JsonKey()
  final Color backgroundcolor;
  @override
  @JsonKey()
  final bool screenEnabled;
// デフォルト値を指定
  @override
  @JsonKey()
  final bool isTrue;
  @override
  @JsonKey()
  final bool isFalse;

  @override
  String toString() {
    return 'QuestionState(questionNumber: $questionNumber, questionType: $questionType, gradeType: $gradeType, backgroundcolor: $backgroundcolor, screenEnabled: $screenEnabled, isTrue: $isTrue, isFalse: $isFalse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionStateImpl &&
            (identical(other.questionNumber, questionNumber) ||
                other.questionNumber == questionNumber) &&
            (identical(other.questionType, questionType) ||
                other.questionType == questionType) &&
            (identical(other.gradeType, gradeType) ||
                other.gradeType == gradeType) &&
            (identical(other.backgroundcolor, backgroundcolor) ||
                other.backgroundcolor == backgroundcolor) &&
            (identical(other.screenEnabled, screenEnabled) ||
                other.screenEnabled == screenEnabled) &&
            (identical(other.isTrue, isTrue) || other.isTrue == isTrue) &&
            (identical(other.isFalse, isFalse) || other.isFalse == isFalse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, questionNumber, questionType,
      gradeType, backgroundcolor, screenEnabled, isTrue, isFalse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionStateImplCopyWith<_$QuestionStateImpl> get copyWith =>
      __$$QuestionStateImplCopyWithImpl<_$QuestionStateImpl>(this, _$identity);
}

abstract class _QuestionState implements QuestionState {
  factory _QuestionState(
      {required final int questionNumber,
      final QuestionType? questionType,
      final GradeType? gradeType,
      final Color backgroundcolor,
      final bool screenEnabled,
      final bool isTrue,
      final bool isFalse}) = _$QuestionStateImpl;

  @override
  int get questionNumber;
  @override
  QuestionType? get questionType;
  @override
  GradeType? get gradeType;
  @override
  Color get backgroundcolor;
  @override
  bool get screenEnabled;
  @override // デフォルト値を指定
  bool get isTrue;
  @override
  bool get isFalse;
  @override
  @JsonKey(ignore: true)
  _$$QuestionStateImplCopyWith<_$QuestionStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
