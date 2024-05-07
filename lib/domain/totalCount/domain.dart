///////// a. パッケージをインポートし、自動生成されるファイルを記述 /////////
import 'package:freezed_annotation/freezed_annotation.dart';

// 生成されるdartファイルを記述
part 'domain.freezed.dart';
part 'domain.g.dart';
///////// b. コード生成するためのクラスを作成 /////////

// freezedでコード生成するために「@freezed」を記述

@freezed
class TotalCountClass with _$TotalCountClass {
  // withの後には「_$[class name]」の形式で記述

  // プロパティを指定
  const factory TotalCountClass({
    required int totalCount,
  }) = _TotalCountClass;
  factory TotalCountClass.fromJson(Map<String, dynamic> json) =>
      _$TotalCountClassFromJson(json);

  static String collectionName = 'totalCount';
}
