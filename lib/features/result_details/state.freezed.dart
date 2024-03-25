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
mixin _$ResultDetailState {
  int get questionNumber => throw _privateConstructorUsedError;
  QuestionType get questionType => throw _privateConstructorUsedError;
  GradeType get gradeType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResultDetailStateCopyWith<ResultDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultDetailStateCopyWith<$Res> {
  factory $ResultDetailStateCopyWith(
          ResultDetailState value, $Res Function(ResultDetailState) then) =
      _$ResultDetailStateCopyWithImpl<$Res, ResultDetailState>;
  @useResult
  $Res call(
      {int questionNumber, QuestionType questionType, GradeType gradeType});
}

/// @nodoc
class _$ResultDetailStateCopyWithImpl<$Res, $Val extends ResultDetailState>
    implements $ResultDetailStateCopyWith<$Res> {
  _$ResultDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionNumber = null,
    Object? questionType = null,
    Object? gradeType = null,
  }) {
    return _then(_value.copyWith(
      questionNumber: null == questionNumber
          ? _value.questionNumber
          : questionNumber // ignore: cast_nullable_to_non_nullable
              as int,
      questionType: null == questionType
          ? _value.questionType
          : questionType // ignore: cast_nullable_to_non_nullable
              as QuestionType,
      gradeType: null == gradeType
          ? _value.gradeType
          : gradeType // ignore: cast_nullable_to_non_nullable
              as GradeType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResultDetailStateImplCopyWith<$Res>
    implements $ResultDetailStateCopyWith<$Res> {
  factory _$$ResultDetailStateImplCopyWith(_$ResultDetailStateImpl value,
          $Res Function(_$ResultDetailStateImpl) then) =
      __$$ResultDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int questionNumber, QuestionType questionType, GradeType gradeType});
}

/// @nodoc
class __$$ResultDetailStateImplCopyWithImpl<$Res>
    extends _$ResultDetailStateCopyWithImpl<$Res, _$ResultDetailStateImpl>
    implements _$$ResultDetailStateImplCopyWith<$Res> {
  __$$ResultDetailStateImplCopyWithImpl(_$ResultDetailStateImpl _value,
      $Res Function(_$ResultDetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionNumber = null,
    Object? questionType = null,
    Object? gradeType = null,
  }) {
    return _then(_$ResultDetailStateImpl(
      questionNumber: null == questionNumber
          ? _value.questionNumber
          : questionNumber // ignore: cast_nullable_to_non_nullable
              as int,
      questionType: null == questionType
          ? _value.questionType
          : questionType // ignore: cast_nullable_to_non_nullable
              as QuestionType,
      gradeType: null == gradeType
          ? _value.gradeType
          : gradeType // ignore: cast_nullable_to_non_nullable
              as GradeType,
    ));
  }
}

/// @nodoc

class _$ResultDetailStateImpl implements _ResultDetailState {
  const _$ResultDetailStateImpl(
      {required this.questionNumber,
      required this.questionType,
      required this.gradeType});

  @override
  final int questionNumber;
  @override
  final QuestionType questionType;
  @override
  final GradeType gradeType;

  @override
  String toString() {
    return 'ResultDetailState(questionNumber: $questionNumber, questionType: $questionType, gradeType: $gradeType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultDetailStateImpl &&
            (identical(other.questionNumber, questionNumber) ||
                other.questionNumber == questionNumber) &&
            (identical(other.questionType, questionType) ||
                other.questionType == questionType) &&
            (identical(other.gradeType, gradeType) ||
                other.gradeType == gradeType));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, questionNumber, questionType, gradeType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultDetailStateImplCopyWith<_$ResultDetailStateImpl> get copyWith =>
      __$$ResultDetailStateImplCopyWithImpl<_$ResultDetailStateImpl>(
          this, _$identity);
}

abstract class _ResultDetailState implements ResultDetailState {
  const factory _ResultDetailState(
      {required final int questionNumber,
      required final QuestionType questionType,
      required final GradeType gradeType}) = _$ResultDetailStateImpl;

  @override
  int get questionNumber;
  @override
  QuestionType get questionType;
  @override
  GradeType get gradeType;
  @override
  @JsonKey(ignore: true)
  _$$ResultDetailStateImplCopyWith<_$ResultDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
