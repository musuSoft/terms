import 'package:dartz/dartz.dart';
import 'package:terms/src/core/error/exception.dart';
import 'package:terms/src/core/error/failure.dart';
import 'package:terms/src/modules/modul.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<HomeModel>>> getHome({
    required String documentName,
  });
  Future<Either<Failure, HomeModel>> getMath({
    required String documentName,
  });
}

class HomeRepoImpl implements HomeRepo {
  const HomeRepoImpl({required this.firestore});
  final FireStore firestore;

  @override
  Future<Either<Failure, List<HomeModel>>> getHome({
    required String documentName,
  }) async {
    try {
      final homeModel = await firestore.getHome(
        documentName: documentName,
      );

      return Right(homeModel);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, HomeModel>> getMath({required String documentName}) {
    throw UnimplementedError();
  }
}
