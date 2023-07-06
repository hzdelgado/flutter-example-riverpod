import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_example_riverpod/data/repositories/firebase_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_state.freezed.dart';

enum AuthStatus {
  initial,
  loading,
  success,
  failure
}
@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    @Default(AuthStatus.initial) AuthStatus status,
    AppException? exception
  }) = _AuthState;

  const AuthState._();
}