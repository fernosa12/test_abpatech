import 'package:dartz/dartz.dart';
import '../../../core/errors/errors.dart';

import '../../entities/local_user/local_user.dart';

abstract class AuthRepository {
  Future<Either<Failure, LocalUser>> login(String email, String password);
}
