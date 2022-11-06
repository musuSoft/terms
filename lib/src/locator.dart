import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get_it/get_it.dart';
import 'package:terms/src/modules/modul.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl
    // repo
    ..registerLazySingleton<HomeRepo>(
      () => HomeRepoImpl(
        firestore: sl<FireStore>(),
      ),
    )

    // data source
    ..registerLazySingleton<FireStore>(
      () => FireStoreImpl(
        firestoreDB: sl<FirebaseFirestore>(),
      ),
    )
    ..registerFactory(
      () => HomeBloc(
        homeRepo: sl(),
      ),
    );

  //extarnal
  final firebase = await Firebase.initializeApp();
  sl.registerLazySingleton(() => firebase);
  final firestoreDB = FirebaseFirestore.instance;
  sl.registerLazySingleton(() => firestoreDB);
}
