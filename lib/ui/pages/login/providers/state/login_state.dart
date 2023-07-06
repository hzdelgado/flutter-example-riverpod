import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_example_riverpod/data/repositories/firebase_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_state.freezed.dart';

enum AuthState {
  initial,
  loading,
  success,
  failure
}
@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState({
    @Default(AuthState.initial) AuthState status,
    AppException? exception
  }) = _LoginState;

  const LoginState._();
}