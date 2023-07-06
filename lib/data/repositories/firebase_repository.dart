import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_example_riverpod/domain/repositories/authentication_repository.dart';

class AppException {
  final String? message;
  final String? statusCode;
  AppException(this.message, this.statusCode);
}

class FirebaseRepository extends AuthenticationRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Future<Either<AppException, User?>> signIn(
      String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      return Right(_auth.currentUser);
    } on FirebaseAuthException catch (e) {
      print(e.code);
      return Left(AppException(e.message, e.code,));
    }
  }

  @override
  Future<Either<AppException, User?>> signUp(
      String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return Right(_auth.currentUser);
    } on FirebaseAuthException catch (e) {
      return Left(AppException(e.message, e.code));
    }
  }
}
