import 'package:courses_app/app/core/error/exceptions.dart';
import 'package:courses_app/app/core/network/netwok_info.dart';
import 'package:courses_app/app/features/auth/data/datasources/sign_in_remote_data_source.dart';
import 'package:courses_app/app/core/error/failures.dart';
import 'package:courses_app/app/features/auth/domain/repositories/sign_in_repository.dart';
import 'package:courses_app/app/features/auth/domain/usecases/sign_in.dart';
import 'package:dartz/dartz.dart';

import '../../domain/entities/sign_in.dart';

class SignInRepositoryImpl implements SignInRepository {
  final NetworkInfo networkInfo;
  final SignInRemoteDataSource signInRemoteDataSource;

  SignInRepositoryImpl(
      {required this.networkInfo, required this.signInRemoteDataSource});
  @override
  Future<Either<Failure, SignIn>> signIn(SignInParams signInParams) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteSignIn = await signInRemoteDataSource.signIn(signInParams);
        // cash or any thing here

        return Right(remoteSignIn);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(ServerFailure());
    }
    /*
      if(is connecteed)
      {
        if(user exist)
        {
          login
        }
        else {
          show user not exist and navigate to Sign UP
        }
      } else {
          show internet not connedted error
      }
    */
  }
}
