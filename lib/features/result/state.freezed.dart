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
mixin _$ResultState {
  List<QuizClass> get quizzes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResultStateCopyWith<ResultState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultStateCopyWith<$Res> {
  factory $ResultStateCopyWith(
          ResultState value, $Res Function(ResultState) then) =
      _$ResultStateCopyWithImpl<$Res, ResultState>;
  @useResult
  $Res call({List<QuizClass> quizzes});
}

/// @nodoc
class _$ResultStateCopyWithImpl<$Res, $Val extends ResultState>
    implements $ResultStateCopyWith<$Res> {
  _$ResultStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quizzes = null,
  }) {
    return _then(_value.copyWith(
      quizzes: null == quizzes
          ? _value.quizzes
          : quizzes // ignore: cast_nullable_to_non_nullable
              as List<QuizClass>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResultStateImplCopyWith<$Res>
    implements $ResultStateCopyWith<$Res> {
  factory _$$ResultStateImplCopyWith(
          _$ResultStateImpl value, $Res Function(_$ResultStateImpl) then) =
      __$$ResultStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<QuizClass> quizzes});
}

/// @nodoc
class __$$ResultStateImplCopyWithImpl<$Res>
    extends _$ResultStateCopyWithImpl<$Res, _$ResultStateImpl>
    implements _$$ResultStateImplCopyWith<$Res> {
  __$$ResultStateImplCopyWithImpl(
      _$ResultStateImpl _value, $Res Function(_$ResultStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quizzes = null,
  }) {
    return _then(_$ResultStateImpl(
      quizzes: null == quizzes
          ? _value._quizzes
          : quizzes // ignore: cast_nullable_to_non_nullable
              as List<QuizClass>,
    ));
  }
}

/// @nodoc

class _$ResultStateImpl implements _ResultState {
  const _$ResultStateImpl({required final List<QuizClass> quizzes})
      : _quizzes = quizzes;

  final List<QuizClass> _quizzes;
  @override
  List<QuizClass> get quizzes {
    if (_quizzes is EqualUnmodifiableListView) return _quizzes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_quizzes);
  }

  @override
  String toString() {
    return 'ResultState(quizzes: $quizzes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultStateImpl &&
            const DeepCollectionEquality().equals(other._quizzes, _quizzes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_quizzes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultStateImplCopyWith<_$ResultStateImpl> get copyWith =>
      __$$ResultStateImplCopyWithImpl<_$ResultStateImpl>(this, _$identity);
}

abstract class _ResultState implements ResultState {
  const factory _ResultState({required final List<QuizClass> quizzes}) =
      _$ResultStateImpl;

  @override
  List<QuizClass> get quizzes;
  @override
  @JsonKey(ignore: true)
  _$$ResultStateImplCopyWith<_$ResultStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
