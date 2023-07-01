// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore: depend_on_referenced_packages
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter_example_riverpod/domain/repositories/authentication_repository.dart';
import 'package:flutter_example_riverpod/ui/pages/login/providers/state/login_state.dart';

class LoginNotifier extends StateNotifier<LoginState> {
  final AuthenticationRepository authenticationRepository;
  LoginNotifier({
    required this.authenticationRepository,
  }): super(const LoginState());

  Future<void> loginUser(String username, String password) async {
    
  }
  

}
