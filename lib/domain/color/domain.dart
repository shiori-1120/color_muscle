import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// 生成されるdartファイルを記述
part 'domain.freezed.dart';
part 'domain.g.dart';
///////// b. コード生成するためのクラスを作成 /////////

// freezedでコード生成するために「@freezed」を記述

@freezed
class Color with _$Color {
  // withの後には「_$[class name]」の形式で記述

  // プロパティを指定
  const factory Color({
    required String colorId,
    String? colorName,
    String? colorCode,
    String? tags,
    String? pccs,
    String? grade,
    String? origin,
  }) = _Color;
  factory Color.fromJson(Map<String, dynamic> json) => _$ColorFromJson(json);

  static String collectionName = 'color';
}
