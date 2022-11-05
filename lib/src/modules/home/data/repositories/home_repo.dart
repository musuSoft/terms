import 'package:dartz/dartz.dart';
import 'package:terms/src/core/error/failure.dart';
import 'package:terms/src/modules/home/data/models/home_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, HomeModel>> getHome({
    required String documentName,
  });
  Future<Either<Failure, HomeModel>> getMath({
    required String documentName,
  });
}

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Failure, HomeModel>> getHome({required String documentName}) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, HomeModel>> getMath({required String documentName}) {
    throw UnimplementedError();
  }
}
