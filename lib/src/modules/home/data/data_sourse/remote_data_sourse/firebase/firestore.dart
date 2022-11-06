// ignore_for_file: cast_nullable_to_non_nullable

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:terms/src/modules/modul.dart';

abstract class FireStore {
  Future<List<HomeModel>> getHome({required String documentName});
  Future<HomeModel> getMath({required String documentName});
}

class FireStoreImpl implements FireStore {
  FireStoreImpl({required this.firestoreDB});
  final FirebaseFirestore firestoreDB;

  @override
  Future<List<HomeModel>> getHome({required String documentName}) async {
    List<HomeModel> homeList = [];

    try {
      final home = await firestoreDB.collection(documentName).get();
      home.docs.forEach((element) {
        return homeList.add(HomeModel.fromJson(element.data()));
      });
      return homeList;
    } on FirebaseException catch (e) {
      if (kDebugMode) {
        print("Failed with error' '${e.code}: ${e.message}");
      }
      return homeList;
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
