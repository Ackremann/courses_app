import 'package:courses_app/features/auth/data/repositories/auth_repo.dart';
import 'package:courses_app/widget/snack_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthSdk extends AuthRepository {
  final _firebaseAuth = FirebaseAuth.instance;

  @override
  Future<void> signUp({required String email, required String password}) async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        showSnackBar('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        showSnackBar('The account already exists for that email.');
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<void> signIn({
    required String email,
    required String password,
  }) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        showSnackBar('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        showSnackBar('Wrong password provided for that user.');
      }
    }
  }

  @override
  Future<void> signOut() async {
    try {
      await _firebaseAuth.signOut();
    } catch (e) {
      showSnackBar('Error' + e.toString(), isError: true);
    }
  }
}
