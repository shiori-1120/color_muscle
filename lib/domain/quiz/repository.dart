import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mottaina_eat/domain/quiz/domain.dart';
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

  Future<List<QuizClass>> getQuizes() async {
    final List<QuizClass> quizList = [
      ...await collection
          .get()
          .then((value) => value.docs.map((e) => e.data()).toList()),
    ];
    return quizList;
  }

  Future<QuizClass> getFirstQuiz() async {
    final List<QuizClass> quiz =
        await getQuizes(); // getQuizes関数を使ってQuizClassのリストを取得
    return quiz.first;
    // if (quiz.isNotEmpty) {
    //   return quiz.first; // リストが空でなければ1番目の要素を返す
    // } else {
    //   return null; // リストが空の場合はnullを返す
    // }
  }
}
