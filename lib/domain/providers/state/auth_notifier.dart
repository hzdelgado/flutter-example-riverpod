// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore: depend_on_referenced_packages
import 'package:flutter_example_riverpod/domain/providers/state/auth_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter_example_riverpod/domain/repositories/authentication_repository.dart';

class AuthNotifier extends StateNotifier<AuthState> {
  final AuthenticationRepository authenticationRepository;
  AuthNotifier(this.authenticationRepository) : super(const AuthState());

  Future<void> loginUser(String email, String password) async {
  
    state = state.copyWith(status: AuthStatus.loading);
    final response = await authenticationRepository.signIn(email, password);
    response.fold((l) {
      state = state.copyWith(status: AuthStatus.failure, exception: l);
    }, (r) {
      if(r != null) {
        state = state.copyWith(status: AuthStatus.success);
      } else {
        state = state.copyWith(status: AuthStatus.failure);
      }
    });
  }

  Future<void> registerUser(String email, String password) async {
  
    state = state.copyWith(status: AuthStatus.loading);
    final response = await authenticationRepository.signUp(email, password);
    response.fold((l) {
      state = state.copyWith(status: AuthStatus.failure, exception: l);
    }, (r) {
      if(r != null) {
        state = state.copyWith(status: AuthStatus.success);
      } else {
        state = state.copyWith(status: AuthStatus.failure);
      }
    });
  }
}
