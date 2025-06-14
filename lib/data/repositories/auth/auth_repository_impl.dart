import 'package:dartz/dartz.dart';

import '../../../lib.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthApi api;
  final NetworkInfo networkInfo;

  AuthRepositoryImpl(this.api, this.networkInfo);
  @override
  Future<Either<Failure, LocalUser>> login(
      String email, String password) async {
    final isConnected = await networkInfo.isConnected;
    if (!isConnected) {
      return Left(Failure.noConnection());
    }
    try {
      final response = await api.login(email, password);
      if (!response.success) {
        return Left(Failure.serverError(response.message));
      }
      return Right(response.data!);
    } catch (e) {
      return Left(Failure.parseFromException(e));
    }
  }
}

//// data source(api)  -> repository -> usecase -> cubit -> ui
