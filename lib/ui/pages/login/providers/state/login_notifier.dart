// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore: depend_on_referenced_packages
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter_example_riverpod/domain/repositories/authentication_repository.dart';
import 'package:flutter_example_riverpod/ui/pages/login/providers/state/login_state.dart';

class LoginNotifier extends StateNotifier<LoginState> {
  final AuthenticationRepository authenticationRepository;
  LoginNotifier(this.authenticationRepository) : super(const LoginState());

  Future<void> loginUser(String email, String password) async {
    state = state.copyWith(status: AuthState.loading);
    final response = await authenticationRepository.signIn(email, password);
    response.fold((l) {
      state = state.copyWith(status: AuthState.failure, exception: l);
    }, (r) {
      if(r != null) {
        state = state.copyWith(status: AuthState.success);
      } else {
        state = state.copyWith(status: AuthState.failure);
      }
    });
  }
}
