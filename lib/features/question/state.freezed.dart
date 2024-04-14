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
// required List<SubQuizClass> subQuizClass,
  QuizClass get quiz => throw _privateConstructorUsedError;
  List<ChoiceClass> get choices => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  int? get quizLength => throw _privateConstructorUsedError;
  String? get nextText => throw _privateConstructorUsedError;
  List<bool> get resultsBool => throw _privateConstructorUsedError;
  List<String> get resultsId => throw _privateConstructorUsedError;
  Color? get backgroundcolor => throw _privateConstructorUsedError;
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
      {QuizClass quiz,
      List<ChoiceClass> choices,
      int index,
      int? quizLength,
      String? nextText,
      List<bool> resultsBool,
      List<String> resultsId,
      Color? backgroundcolor,
      bool screenEnabled,
      bool isTrue,
      bool isFalse});

  $QuizClassCopyWith<$Res> get quiz;
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
    Object? quiz = null,
    Object? choices = null,
    Object? index = null,
    Object? quizLength = freezed,
    Object? nextText = freezed,
    Object? resultsBool = null,
    Object? resultsId = null,
    Object? backgroundcolor = freezed,
    Object? screenEnabled = null,
    Object? isTrue = null,
    Object? isFalse = null,
  }) {
    return _then(_value.copyWith(
      quiz: null == quiz
          ? _value.quiz
          : quiz // ignore: cast_nullable_to_non_nullable
              as QuizClass,
      choices: null == choices
          ? _value.choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<ChoiceClass>,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      quizLength: freezed == quizLength
          ? _value.quizLength
          : quizLength // ignore: cast_nullable_to_non_nullable
              as int?,
      nextText: freezed == nextText
          ? _value.nextText
          : nextText // ignore: cast_nullable_to_non_nullable
              as String?,
      resultsBool: null == resultsBool
          ? _value.resultsBool
          : resultsBool // ignore: cast_nullable_to_non_nullable
              as List<bool>,
      resultsId: null == resultsId
          ? _value.resultsId
          : resultsId // ignore: cast_nullable_to_non_nullable
              as List<String>,
      backgroundcolor: freezed == backgroundcolor
          ? _value.backgroundcolor
          : backgroundcolor // ignore: cast_nullable_to_non_nullable
              as Color?,
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

  @override
  @pragma('vm:prefer-inline')
  $QuizClassCopyWith<$Res> get quiz {
    return $QuizClassCopyWith<$Res>(_value.quiz, (value) {
      return _then(_value.copyWith(quiz: value) as $Val);
    });
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
      {QuizClass quiz,
      List<ChoiceClass> choices,
      int index,
      int? quizLength,
      String? nextText,
      List<bool> resultsBool,
      List<String> resultsId,
      Color? backgroundcolor,
      bool screenEnabled,
      bool isTrue,
      bool isFalse});

  @override
  $QuizClassCopyWith<$Res> get quiz;
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
    Object? quiz = null,
    Object? choices = null,
    Object? index = null,
    Object? quizLength = freezed,
    Object? nextText = freezed,
    Object? resultsBool = null,
    Object? resultsId = null,
    Object? backgroundcolor = freezed,
    Object? screenEnabled = null,
    Object? isTrue = null,
    Object? isFalse = null,
  }) {
    return _then(_$QuestionStateImpl(
      quiz: null == quiz
          ? _value.quiz
          : quiz // ignore: cast_nullable_to_non_nullable
              as QuizClass,
      choices: null == choices
          ? _value._choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<ChoiceClass>,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      quizLength: freezed == quizLength
          ? _value.quizLength
          : quizLength // ignore: cast_nullable_to_non_nullable
              as int?,
      nextText: freezed == nextText
          ? _value.nextText
          : nextText // ignore: cast_nullable_to_non_nullable
              as String?,
      resultsBool: null == resultsBool
          ? _value._resultsBool
          : resultsBool // ignore: cast_nullable_to_non_nullable
              as List<bool>,
      resultsId: null == resultsId
          ? _value._resultsId
          : resultsId // ignore: cast_nullable_to_non_nullable
              as List<String>,
      backgroundcolor: freezed == backgroundcolor
          ? _value.backgroundcolor
          : backgroundcolor // ignore: cast_nullable_to_non_nullable
              as Color?,
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
      {required this.quiz,
      required final List<ChoiceClass> choices,
      this.index = 0,
      this.quizLength,
      this.nextText,
      final List<bool> resultsBool = const [],
      final List<String> resultsId = const [],
      this.backgroundcolor = ColorName.whiteBase,
      this.screenEnabled = true,
      this.isTrue = false,
      this.isFalse = false})
      : _choices = choices,
        _resultsBool = resultsBool,
        _resultsId = resultsId;

// required List<SubQuizClass> subQuizClass,
  @override
  final QuizClass quiz;
  final List<ChoiceClass> _choices;
  @override
  List<ChoiceClass> get choices {
    if (_choices is EqualUnmodifiableListView) return _choices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_choices);
  }

  @override
  @JsonKey()
  final int index;
  @override
  final int? quizLength;
  @override
  final String? nextText;
  final List<bool> _resultsBool;
  @override
  @JsonKey()
  List<bool> get resultsBool {
    if (_resultsBool is EqualUnmodifiableListView) return _resultsBool;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_resultsBool);
  }

  final List<String> _resultsId;
  @override
  @JsonKey()
  List<String> get resultsId {
    if (_resultsId is EqualUnmodifiableListView) return _resultsId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_resultsId);
  }

  @override
  @JsonKey()
  final Color? backgroundcolor;
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
    return 'QuestionState(quiz: $quiz, choices: $choices, index: $index, quizLength: $quizLength, nextText: $nextText, resultsBool: $resultsBool, resultsId: $resultsId, backgroundcolor: $backgroundcolor, screenEnabled: $screenEnabled, isTrue: $isTrue, isFalse: $isFalse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionStateImpl &&
            (identical(other.quiz, quiz) || other.quiz == quiz) &&
            const DeepCollectionEquality().equals(other._choices, _choices) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.quizLength, quizLength) ||
                other.quizLength == quizLength) &&
            (identical(other.nextText, nextText) ||
                other.nextText == nextText) &&
            const DeepCollectionEquality()
                .equals(other._resultsBool, _resultsBool) &&
            const DeepCollectionEquality()
                .equals(other._resultsId, _resultsId) &&
            (identical(other.backgroundcolor, backgroundcolor) ||
                other.backgroundcolor == backgroundcolor) &&
            (identical(other.screenEnabled, screenEnabled) ||
                other.screenEnabled == screenEnabled) &&
            (identical(other.isTrue, isTrue) || other.isTrue == isTrue) &&
            (identical(other.isFalse, isFalse) || other.isFalse == isFalse));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      quiz,
      const DeepCollectionEquality().hash(_choices),
      index,
      quizLength,
      nextText,
      const DeepCollectionEquality().hash(_resultsBool),
      const DeepCollectionEquality().hash(_resultsId),
      backgroundcolor,
      screenEnabled,
      isTrue,
      isFalse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionStateImplCopyWith<_$QuestionStateImpl> get copyWith =>
      __$$QuestionStateImplCopyWithImpl<_$QuestionStateImpl>(this, _$identity);
}

abstract class _QuestionState implements QuestionState {
  factory _QuestionState(
      {required final QuizClass quiz,
      required final List<ChoiceClass> choices,
      final int index,
      final int? quizLength,
      final String? nextText,
      final List<bool> resultsBool,
      final List<String> resultsId,
      final Color? backgroundcolor,
      final bool screenEnabled,
      final bool isTrue,
      final bool isFalse}) = _$QuestionStateImpl;

  @override // required List<SubQuizClass> subQuizClass,
  QuizClass get quiz;
  @override
  List<ChoiceClass> get choices;
  @override
  int get index;
  @override
  int? get quizLength;
  @override
  String? get nextText;
  @override
  List<bool> get resultsBool;
  @override
  List<String> get resultsId;
  @override
  Color? get backgroundcolor;
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
