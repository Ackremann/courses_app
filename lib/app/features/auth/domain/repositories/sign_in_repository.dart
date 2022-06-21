import 'package:courses_app/app/core/error/failures.dart';

import 'package:courses_app/app/features/auth/domain/usecases/sign_in.dart';
import 'package:dartz/dartz.dart';

import '../entities/sign_in.dart';

abstract class SignInRepository {
  Future<Either<Failure,SignIn>> signIn(SignInParams signInParams);
}
