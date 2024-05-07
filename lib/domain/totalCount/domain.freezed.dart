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

TotalCountClass _$TotalCountClassFromJson(Map<String, dynamic> json) {
  return _TotalCountClass.fromJson(json);
}

/// @nodoc
mixin _$TotalCountClass {
  int get totalCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TotalCountClassCopyWith<TotalCountClass> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TotalCountClassCopyWith<$Res> {
  factory $TotalCountClassCopyWith(
          TotalCountClass value, $Res Function(TotalCountClass) then) =
      _$TotalCountClassCopyWithImpl<$Res, TotalCountClass>;
  @useResult
  $Res call({int totalCount});
}

/// @nodoc
class _$TotalCountClassCopyWithImpl<$Res, $Val extends TotalCountClass>
    implements $TotalCountClassCopyWith<$Res> {
  _$TotalCountClassCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
  }) {
    return _then(_value.copyWith(
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TotalCountClassImplCopyWith<$Res>
    implements $TotalCountClassCopyWith<$Res> {
  factory _$$TotalCountClassImplCopyWith(_$TotalCountClassImpl value,
          $Res Function(_$TotalCountClassImpl) then) =
      __$$TotalCountClassImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int totalCount});
}

/// @nodoc
class __$$TotalCountClassImplCopyWithImpl<$Res>
    extends _$TotalCountClassCopyWithImpl<$Res, _$TotalCountClassImpl>
    implements _$$TotalCountClassImplCopyWith<$Res> {
  __$$TotalCountClassImplCopyWithImpl(
      _$TotalCountClassImpl _value, $Res Function(_$TotalCountClassImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
  }) {
    return _then(_$TotalCountClassImpl(
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TotalCountClassImpl implements _TotalCountClass {
  const _$TotalCountClassImpl({required this.totalCount});

  factory _$TotalCountClassImpl.fromJson(Map<String, dynamic> json) =>
      _$$TotalCountClassImplFromJson(json);

  @override
  final int totalCount;

  @override
  String toString() {
    return 'TotalCountClass(totalCount: $totalCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TotalCountClassImpl &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, totalCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TotalCountClassImplCopyWith<_$TotalCountClassImpl> get copyWith =>
      __$$TotalCountClassImplCopyWithImpl<_$TotalCountClassImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TotalCountClassImplToJson(
      this,
    );
  }
}

abstract class _TotalCountClass implements TotalCountClass {
  const factory _TotalCountClass({required final int totalCount}) =
      _$TotalCountClassImpl;

  factory _TotalCountClass.fromJson(Map<String, dynamic> json) =
      _$TotalCountClassImpl.fromJson;

  @override
  int get totalCount;
  @override
  @JsonKey(ignore: true)
  _$$TotalCountClassImplCopyWith<_$TotalCountClassImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
