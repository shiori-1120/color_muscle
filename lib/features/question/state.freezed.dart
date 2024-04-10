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
  QuizClass? get quiz => throw _privateConstructorUsedError;
  Color? get backgroundcolor => throw _privateConstructorUsedError;
  bool get screenEnabled => throw _privateConstructorUsedError; // デフォルト値を指定
  bool get isTrue => throw _privateConstructorUsedError;
  bool get isFalse => throw _privateConstructorUsedError;
  List<ChoiceClass> get choiceClass => throw _privateConstructorUsedError;

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
      {QuizClass? quiz,
      Color? backgroundcolor,
      bool screenEnabled,
      bool isTrue,
      bool isFalse,
      List<ChoiceClass> choiceClass});

  $QuizClassCopyWith<$Res>? get quiz;
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
    Object? quiz = freezed,
    Object? backgroundcolor = freezed,
    Object? screenEnabled = null,
    Object? isTrue = null,
    Object? isFalse = null,
    Object? choiceClass = null,
  }) {
    return _then(_value.copyWith(
      quiz: freezed == quiz
          ? _value.quiz
          : quiz // ignore: cast_nullable_to_non_nullable
              as QuizClass?,
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
      choiceClass: null == choiceClass
          ? _value.choiceClass
          : choiceClass // ignore: cast_nullable_to_non_nullable
              as List<ChoiceClass>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $QuizClassCopyWith<$Res>? get quiz {
    if (_value.quiz == null) {
      return null;
    }

    return $QuizClassCopyWith<$Res>(_value.quiz!, (value) {
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
      {QuizClass? quiz,
      Color? backgroundcolor,
      bool screenEnabled,
      bool isTrue,
      bool isFalse,
      List<ChoiceClass> choiceClass});

  @override
  $QuizClassCopyWith<$Res>? get quiz;
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
    Object? quiz = freezed,
    Object? backgroundcolor = freezed,
    Object? screenEnabled = null,
    Object? isTrue = null,
    Object? isFalse = null,
    Object? choiceClass = null,
  }) {
    return _then(_$QuestionStateImpl(
      quiz: freezed == quiz
          ? _value.quiz
          : quiz // ignore: cast_nullable_to_non_nullable
              as QuizClass?,
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
      choiceClass: null == choiceClass
          ? _value._choiceClass
          : choiceClass // ignore: cast_nullable_to_non_nullable
              as List<ChoiceClass>,
    ));
  }
}

/// @nodoc

class _$QuestionStateImpl implements _QuestionState {
  _$QuestionStateImpl(
      {this.quiz = const QuizClass(
          id: '1',
          explanation: 'エラー',
          quizStatement: 'エラー',
          trueChoice: 'エラー',
          falseChoice1: 'エラー',
          falseChoice2: 'エラー',
          falseChoice3: 'エラー'),
      this.backgroundcolor = ColorName.whiteBase,
      this.screenEnabled = true,
      this.isTrue = false,
      this.isFalse = false,
      required final List<ChoiceClass> choiceClass})
      : _choiceClass = choiceClass;

  @override
  @JsonKey()
  final QuizClass? quiz;
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
  final List<ChoiceClass> _choiceClass;
  @override
  List<ChoiceClass> get choiceClass {
    if (_choiceClass is EqualUnmodifiableListView) return _choiceClass;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_choiceClass);
  }

  @override
  String toString() {
    return 'QuestionState(quiz: $quiz, backgroundcolor: $backgroundcolor, screenEnabled: $screenEnabled, isTrue: $isTrue, isFalse: $isFalse, choiceClass: $choiceClass)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionStateImpl &&
            (identical(other.quiz, quiz) || other.quiz == quiz) &&
            (identical(other.backgroundcolor, backgroundcolor) ||
                other.backgroundcolor == backgroundcolor) &&
            (identical(other.screenEnabled, screenEnabled) ||
                other.screenEnabled == screenEnabled) &&
            (identical(other.isTrue, isTrue) || other.isTrue == isTrue) &&
            (identical(other.isFalse, isFalse) || other.isFalse == isFalse) &&
            const DeepCollectionEquality()
                .equals(other._choiceClass, _choiceClass));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      quiz,
      backgroundcolor,
      screenEnabled,
      isTrue,
      isFalse,
      const DeepCollectionEquality().hash(_choiceClass));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionStateImplCopyWith<_$QuestionStateImpl> get copyWith =>
      __$$QuestionStateImplCopyWithImpl<_$QuestionStateImpl>(this, _$identity);
}

abstract class _QuestionState implements QuestionState {
  factory _QuestionState(
      {final QuizClass? quiz,
      final Color? backgroundcolor,
      final bool screenEnabled,
      final bool isTrue,
      final bool isFalse,
      required final List<ChoiceClass> choiceClass}) = _$QuestionStateImpl;

  @override
  QuizClass? get quiz;
  @override
  Color? get backgroundcolor;
  @override
  bool get screenEnabled;
  @override // デフォルト値を指定
  bool get isTrue;
  @override
  bool get isFalse;
  @override
  List<ChoiceClass> get choiceClass;
  @override
  @JsonKey(ignore: true)
  _$$QuestionStateImplCopyWith<_$QuestionStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
