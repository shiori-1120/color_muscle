import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:color_muscle/domain/color/domain.dart';
import 'package:color_muscle/firebase/firebase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repository.g.dart';

@Riverpod(keepAlive: true)
CollectionReference<ColorClass> colorFirestore(ColorFirestoreRef ref) =>
    ref.read(firestoreProvider).collection('color').withConverter<ColorClass>(
          fromFirestore: (snapshot, _) => ColorClass.fromJson(snapshot.data()!),
          toFirestore: (data, _) => data.toJson(),
        );

@Riverpod(keepAlive: true)
class ColorRepo extends _$ColorRepo {
  FirebaseFirestore get db => ref.read(firestoreProvider);

  CollectionReference<ColorClass> get collection =>
      ref.read(colorFirestoreProvider);

  @override
  void build() {}

  Future<List<ColorClass>> getColorWithGradeFilter(String grade) async {
    final List<ColorClass> colors = [
      ...await collection
          .where('grade', isEqualTo: grade)
          .get()
          .then((value) => value.docs.map((e) => e.data()).toList()),
    ];
    return colors;
  }

  
}
