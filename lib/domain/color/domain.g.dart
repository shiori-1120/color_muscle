// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'domain.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ColorClassImpl _$$ColorClassImplFromJson(Map<String, dynamic> json) =>
    _$ColorClassImpl(
      colorId: json['colorId'] as String,
      colorName: json['colorName'] as String?,
      colorCode: json['colorCode'] as String?,
      tags: json['tags'] as String?,
      pccs: json['pccs'] as String?,
      grade: json['grade'] as String?,
      origin: json['origin'] as String?,
    );

Map<String, dynamic> _$$ColorClassImplToJson(_$ColorClassImpl instance) =>
    <String, dynamic>{
      'colorId': instance.colorId,
      'colorName': instance.colorName,
      'colorCode': instance.colorCode,
      'tags': instance.tags,
      'pccs': instance.pccs,
      'grade': instance.grade,
      'origin': instance.origin,
    };
