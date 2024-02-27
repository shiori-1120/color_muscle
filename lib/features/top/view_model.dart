// import 'dart:async';

// import 'package:color_muscle/features/question/page/question.dart';
// import 'package:color_muscle/features/top/state.dart';
// import 'package:flutter/material.dart';
// import 'package:riverpod_annotation/riverpod_annotation.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart'; // 追加

// part 'view_model.g.dart';

// final topViewModelProvider = Provider<TopViewModel>((ref) => TopViewModel()); // 追加

// @riverpod
// class TopViewModel extends _$TopViewModel {

//   @override
//   FutureOr<TopState> build() async {
//     final state =
//         TopState(questionNumber: '', questionFormat: '', questionGrade: '');
//     return state;
//   }

//   /// 詳細ページへ
//   Future<void> navigateToQuestionPage(
//           BuildContext context,
//           String questionNumber,
//           String questionFormat,
//           String questionGrade) async =>
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => QuestionPage(
//               questionNumber: questionNumber,
//               questionFormat: questionFormat,
//               questionGrade: questionGrade),
//         ),
//       );
// }
