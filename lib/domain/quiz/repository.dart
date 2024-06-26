import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mottaina_eat/domain/quiz/domain.dart';
import 'package:mottaina_eat/features/question/choice_class.dart';
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

  Future<List<QuizClass>> getQuizzes() async {
    final List<QuizClass> quizzes = [
      ...await collection
          .get()
          .then((value) => value.docs.map((e) => e.data()).toList()),
    ];
    return quizzes;
  }

  Future<QuizClass> getQuiz(int index) async {
    final int questionId = index + 100;
    return collection.doc(questionId.toString()).get().then((value) {
      if (value.data() == null) {
        throw ArgumentError('データが存在しません');
      }
      return value.data()!;
    });
  }

  Future<int> getQuizLength() async {
    final List<QuizClass> quizList = [
      ...await collection
          .get()
          .then((value) => value.docs.map((e) => e.data()).toList()),
    ];
    final int quizLength = quizList.length;
    return quizLength;
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

  Future<void> updateResultCounts(
      int quizLength, List<bool> resultsBool, List<int> resultsId) async {
    await db.runTransaction((t) async {
      for (int i = 0; i < quizLength; i++) {
        final int questionId = resultsId[i] + 99;
        final DocumentReference quizDocRef =
            collection.doc(questionId.toString());
        if (resultsBool[i] == true) {
          t.update(quizDocRef, {
            'correctCount': FieldValue.increment(1),
          });
        } else if (resultsBool[i] == false) {
          t.update(quizDocRef, {
            'incorrectCount': FieldValue.increment(1),
          });
        }
      }
    });
  }
}
