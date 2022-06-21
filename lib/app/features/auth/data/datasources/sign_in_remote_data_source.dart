import 'package:courses_app/app/features/auth/domain/usecases/sign_in.dart';

import '../models/sign_in_model.dart';

abstract class SignInRemoteDataSource {
  Future<SignInResponse> signIn(SignInParams signInParams);
}

class SignInRemoteDataSourceImpl implements SignInRemoteDataSource {
  @override
  Future<SignInResponse> signIn(SignInParams signInParams) {
    throw UnimplementedError();
  }
}
