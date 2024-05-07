import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mottaina_eat/domain/totalCount/domain.dart';
import 'package:mottaina_eat/firebase/firebase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repository.g.dart';

@Riverpod(keepAlive: true)
class TotalCountRepo extends _$TotalCountRepo {
    FirebaseFirestore get db => ref.read(firestoreProvider);
  
  CollectionReference<TotalCountClass> get collection => ref
      .read(firestoreProvider)
      .collection(TotalCountClass.collectionName)
      .withConverter<TotalCountClass>(
        fromFirestore: (snapshot, _) {
          final data = snapshot.data();
          if (data == null) {
            throw Exception('Document data not available');
          }
          return   TotalCountClass.fromJson(data);
        },
        toFirestore: (data, _) => data.toJson(),
      );
  @override
  void build() {}

  Future<TotalCountClass> fetchTotalCount() async {
    const int questionId = 1;
    return collection.doc(questionId.toString()).get().then((value) {
      if (value.data() == null) {
        throw ArgumentError('データが存在しません');
      }
      return value.data()!;
    });
  }

  Future<void> updateTotalCount() async {
    await db.runTransaction((t) async {
      final DocumentReference docRef =
          FirebaseFirestore.instance.collection('totalCount').doc('1');
      t.update(docRef, {
        'totalCount': FieldValue.increment(1),
      });
    });
  }
}
