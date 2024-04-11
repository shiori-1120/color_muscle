import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mottaina_eat/domain/quiz/domain.dart';
import 'package:mottaina_eat/features/question/choice_class.dart';
import 'package:mottaina_eat/features/question/sub_quiz_class.dart';
import 'package:mottaina_eat/firebase/firebase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repository.g.dart';

@Riverpod(keepAlive: true)
class QuizRepo extends _$QuizRepo {
  FirebaseFirestore get db => ref.read(firestoreProvider);
  CollectionReference<QuizClass> get collection => ref
      .read(firestoreProvider)
      .collection(QuizClass.collectionName)
      .withConverter<QuizClass>(
        fromFirestore: (snapshot, _) {
          final data = snapshot.data();
          if (data == null) {
            throw Exception('Document data not available');
          }
          return QuizClass.fromJson(data);
        },
        toFirestore: (data, _) => data.toJson(),
      );

  @override
  void build() {}

  Future<List<SubQuizClass>> getQuizes() async {
    final List<QuizClass> quizList = [
      ...await collection
          .get()
          .then((value) => value.docs.map((e) => e.data()).toList()),
    ];
    final List<SubQuizClass> subQuizClass = [];

    for (int i = 0; i < quizList.length; i++) {
      final quiz = quizList[i];
      subQuizClass.add(SubQuizClass(
        quizList[i].id,
        quizList[i].explanation ?? 'エラー',
        quizList[i].quizStatement ?? '',
      ));
    }
    return subQuizClass;
  }

  Future<QuizClass> getQuiz(int index) async {
    final List<QuizClass> quizList = [
      ...await collection
          .get()
          .then((value) => value.docs.map((e) => e.data()).toList()),
    ];
    final quiz = quizList[index];
    return quiz;
  }

  Future<List<ChoiceClass>> getChoices(int index) async {
    final List<QuizClass> quizList = [
      ...await collection
          .get()
          .then((value) => value.docs.map((e) => e.data()).toList()),
    ];
    final quiz = quizList[index];
    final List<ChoiceClass> choices = [];
    choices.addAll([
      ChoiceClass(quiz.trueChoice, 0),
      ChoiceClass(quiz.falseChoice1, 1),
      ChoiceClass(quiz.falseChoice2, 2),
      ChoiceClass(quiz.falseChoice3, 3)
    ]);
    choices.shuffle(Random());

    return choices;
  }
}
