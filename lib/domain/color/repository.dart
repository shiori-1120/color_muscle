import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:color_muscle/domain/color/domain.dart';
import 'package:color_muscle/firebase/firebase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repository.g.dart';

@Riverpod(keepAlive: true)
CollectionReference<Color> couponFirestore(CplorFirestoreRef ref) =>
    ref.read(firestoreProvider).collection('color').withConverter<Color>(
          fromFirestore: (snapshot, _) => Color.fromJson(snapshot.data()!),
          toFirestore: (data, _) => data.toJson(),
        );

@Riverpod(keepAlive: true)
class ColorRepo extends _$ColorRepo {
  FirebaseFirestore get db => ref.read(firestoreProvider);

  CollectionReference<Color> get collection =>
      ref.read(colorFirestoreProvider);

  @override
  void build() {}

  Future<List<Color>> getCoupons() async {
    final List<Color> couponList = [
      ...await collection
          .get()
          .then((value) => value.docs.map((e) => e.data()).toList()),
    ];
    return couponList;
  }

  Future<Color> getColorById(String colorId) async =>
      collection.doc(colorId).get().then((value) {
        if (value.data() == null) {
          throw ArgumentError('データが存在しません');
        }
        return value.data()!;
      });

 
  Future<List<String>> getObtainableCouponIds() async {
    final List<String> obtainableCouponIds = [
      ...await collection
          .where('remainingAmount', isGreaterThan: 0)
          .where('isObtainable', isEqualTo: true)
          .get()
          .then((value) => value.docs.map((e) => e.id).toList()),
    ];
    return obtainableCouponIds;
  }
}
