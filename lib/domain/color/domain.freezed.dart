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

ColorClass _$ColorClassFromJson(Map<String, dynamic> json) {
  return _ColorClass.fromJson(json);
}

/// @nodoc
mixin _$ColorClass {
  String get colorId => throw _privateConstructorUsedError;
  String? get colorName => throw _privateConstructorUsedError;
  String? get colorCode => throw _privateConstructorUsedError;
  String? get tags => throw _privateConstructorUsedError;
  String? get pccs => throw _privateConstructorUsedError;
  String? get grade => throw _privateConstructorUsedError;
  String? get origin => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ColorClassCopyWith<ColorClass> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColorClassCopyWith<$Res> {
  factory $ColorClassCopyWith(
          ColorClass value, $Res Function(ColorClass) then) =
      _$ColorClassCopyWithImpl<$Res, ColorClass>;
  @useResult
  $Res call(
      {String colorId,
      String? colorName,
      String? colorCode,
      String? tags,
      String? pccs,
      String? grade,
      String? origin});
}

/// @nodoc
class _$ColorClassCopyWithImpl<$Res, $Val extends ColorClass>
    implements $ColorClassCopyWith<$Res> {
  _$ColorClassCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colorId = null,
    Object? colorName = freezed,
    Object? colorCode = freezed,
    Object? tags = freezed,
    Object? pccs = freezed,
    Object? grade = freezed,
    Object? origin = freezed,
  }) {
    return _then(_value.copyWith(
      colorId: null == colorId
          ? _value.colorId
          : colorId // ignore: cast_nullable_to_non_nullable
              as String,
      colorName: freezed == colorName
          ? _value.colorName
          : colorName // ignore: cast_nullable_to_non_nullable
              as String?,
      colorCode: freezed == colorCode
          ? _value.colorCode
          : colorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String?,
      pccs: freezed == pccs
          ? _value.pccs
          : pccs // ignore: cast_nullable_to_non_nullable
              as String?,
      grade: freezed == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as String?,
      origin: freezed == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ColorClassImplCopyWith<$Res>
    implements $ColorClassCopyWith<$Res> {
  factory _$$ColorClassImplCopyWith(
          _$ColorClassImpl value, $Res Function(_$ColorClassImpl) then) =
      __$$ColorClassImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String colorId,
      String? colorName,
      String? colorCode,
      String? tags,
      String? pccs,
      String? grade,
      String? origin});
}

/// @nodoc
class __$$ColorClassImplCopyWithImpl<$Res>
    extends _$ColorClassCopyWithImpl<$Res, _$ColorClassImpl>
    implements _$$ColorClassImplCopyWith<$Res> {
  __$$ColorClassImplCopyWithImpl(
      _$ColorClassImpl _value, $Res Function(_$ColorClassImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colorId = null,
    Object? colorName = freezed,
    Object? colorCode = freezed,
    Object? tags = freezed,
    Object? pccs = freezed,
    Object? grade = freezed,
    Object? origin = freezed,
  }) {
    return _then(_$ColorClassImpl(
      colorId: null == colorId
          ? _value.colorId
          : colorId // ignore: cast_nullable_to_non_nullable
              as String,
      colorName: freezed == colorName
          ? _value.colorName
          : colorName // ignore: cast_nullable_to_non_nullable
              as String?,
      colorCode: freezed == colorCode
          ? _value.colorCode
          : colorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String?,
      pccs: freezed == pccs
          ? _value.pccs
          : pccs // ignore: cast_nullable_to_non_nullable
              as String?,
      grade: freezed == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as String?,
      origin: freezed == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ColorClassImpl implements _ColorClass {
  const _$ColorClassImpl(
      {required this.colorId,
      this.colorName,
      this.colorCode,
      this.tags,
      this.pccs,
      this.grade,
      this.origin});

  factory _$ColorClassImpl.fromJson(Map<String, dynamic> json) =>
      _$$ColorClassImplFromJson(json);

  @override
  final String colorId;
  @override
  final String? colorName;
  @override
  final String? colorCode;
  @override
  final String? tags;
  @override
  final String? pccs;
  @override
  final String? grade;
  @override
  final String? origin;

  @override
  String toString() {
    return 'ColorClass(colorId: $colorId, colorName: $colorName, colorCode: $colorCode, tags: $tags, pccs: $pccs, grade: $grade, origin: $origin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColorClassImpl &&
            (identical(other.colorId, colorId) || other.colorId == colorId) &&
            (identical(other.colorName, colorName) ||
                other.colorName == colorName) &&
            (identical(other.colorCode, colorCode) ||
                other.colorCode == colorCode) &&
            (identical(other.tags, tags) || other.tags == tags) &&
            (identical(other.pccs, pccs) || other.pccs == pccs) &&
            (identical(other.grade, grade) || other.grade == grade) &&
            (identical(other.origin, origin) || other.origin == origin));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, colorId, colorName, colorCode, tags, pccs, grade, origin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ColorClassImplCopyWith<_$ColorClassImpl> get copyWith =>
      __$$ColorClassImplCopyWithImpl<_$ColorClassImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ColorClassImplToJson(
      this,
    );
  }
}

abstract class _ColorClass implements ColorClass {
  const factory _ColorClass(
      {required final String colorId,
      final String? colorName,
      final String? colorCode,
      final String? tags,
      final String? pccs,
      final String? grade,
      final String? origin}) = _$ColorClassImpl;

  factory _ColorClass.fromJson(Map<String, dynamic> json) =
      _$ColorClassImpl.fromJson;

  @override
  String get colorId;
  @override
  String? get colorName;
  @override
  String? get colorCode;
  @override
  String? get tags;
  @override
  String? get pccs;
  @override
  String? get grade;
  @override
  String? get origin;
  @override
  @JsonKey(ignore: true)
  _$$ColorClassImplCopyWith<_$ColorClassImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
