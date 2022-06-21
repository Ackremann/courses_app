import 'package:courses_app/app/core/usecases/usecase.dart';

import 'package:courses_app/app/features/auth/domain/repositories/sign_in_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/sign_in.dart';

class PostSignIn implements UseCase<SignIn, SignInParams> {
  // repo
  final SignInRepository signInRepository;

  PostSignIn({required this.signInRepository});
  @override
  Future<Either<Failure, SignIn>> call(SignInParams signInParams) {
    return signInRepository.signIn(signInParams);
  }
}

class SignInParams {
  final String email;
  final String password;

  SignInParams({
    this.email = "",
    this.password = "",
  });

  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
      };
}
