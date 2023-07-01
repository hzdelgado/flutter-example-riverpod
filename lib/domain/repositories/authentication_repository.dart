import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_example_riverpod/data/repositories/firebase_repository.dart';

abstract class AuthenticationRepository {
  Future<Either<AppException, User?>> signIn(String email, String password);
  Future<Either<AppException, User?>> signUp(String email, String password);
}
