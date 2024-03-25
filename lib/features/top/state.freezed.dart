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
mixin _$TopState {
  int get questionNumber => throw _privateConstructorUsedError;
  QuestionType get questionType => throw _privateConstructorUsedError;
  GradeType get gradeType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TopStateCopyWith<TopState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopStateCopyWith<$Res> {
  factory $TopStateCopyWith(TopState value, $Res Function(TopState) then) =
      _$TopStateCopyWithImpl<$Res, TopState>;
  @useResult
  $Res call(
      {int questionNumber, QuestionType questionType, GradeType gradeType});
}

/// @nodoc
class _$TopStateCopyWithImpl<$Res, $Val extends TopState>
    implements $TopStateCopyWith<$Res> {
  _$TopStateCopyWithImpl(this._value, this._then);

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
abstract class _$$TopStateImplCopyWith<$Res>
    implements $TopStateCopyWith<$Res> {
  factory _$$TopStateImplCopyWith(
          _$TopStateImpl value, $Res Function(_$TopStateImpl) then) =
      __$$TopStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int questionNumber, QuestionType questionType, GradeType gradeType});
}

/// @nodoc
class __$$TopStateImplCopyWithImpl<$Res>
    extends _$TopStateCopyWithImpl<$Res, _$TopStateImpl>
    implements _$$TopStateImplCopyWith<$Res> {
  __$$TopStateImplCopyWithImpl(
      _$TopStateImpl _value, $Res Function(_$TopStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionNumber = null,
    Object? questionType = null,
    Object? gradeType = null,
  }) {
    return _then(_$TopStateImpl(
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

class _$TopStateImpl implements _TopState {
  const _$TopStateImpl(
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
    return 'TopState(questionNumber: $questionNumber, questionType: $questionType, gradeType: $gradeType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopStateImpl &&
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
  _$$TopStateImplCopyWith<_$TopStateImpl> get copyWith =>
      __$$TopStateImplCopyWithImpl<_$TopStateImpl>(this, _$identity);
}

abstract class _TopState implements TopState {
  const factory _TopState(
      {required final int questionNumber,
      required final QuestionType questionType,
      required final GradeType gradeType}) = _$TopStateImpl;

  @override
  int get questionNumber;
  @override
  QuestionType get questionType;
  @override
  GradeType get gradeType;
  @override
  @JsonKey(ignore: true)
  _$$TopStateImplCopyWith<_$TopStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
