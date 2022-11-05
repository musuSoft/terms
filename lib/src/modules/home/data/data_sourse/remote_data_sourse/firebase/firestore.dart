// ignore_for_file: cast_nullable_to_non_nullable

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:terms/src/modules/modul.dart';

abstract class FireStore {
  Future<HomeModel> getHome({required String documentName});
  Future<HomeModel> getMath({required String documentName});
}

class FireStoreImpl implements FireStore {
  FireStoreImpl({required this.firestoreDB});
  final FirebaseFirestore firestoreDB;

  @override
  Future<HomeModel> getHome({required String documentName}) async {
    final DocumentSnapshot home =
        await firestoreDB.collection('home').doc(documentName).get();
    if (home.exists) {
      final homeMap = home.data() as Map<String, dynamic>;
      final homeObject = HomeModel.fromJson(homeMap);
      return homeObject;
    } else {
      return HomeModel();
    }
  }

  @override
  Future<HomeModel> getMath({required String documentName}) async {
    final DocumentSnapshot home =
        await firestoreDB.collection('home').doc(documentName).get();
    if (home.exists) {
      final homeMap = home.data() as Map<String, dynamic>;
      final homeObject = HomeModel.fromJson(homeMap);
      return homeObject;
    } else {
      return HomeModel();
    }
  }
}
