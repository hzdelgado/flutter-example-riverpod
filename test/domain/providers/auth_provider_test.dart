import 'package:dartz/dartz.dart';
import 'package:flutter_example_riverpod/domain/providers/state/auth_notifier.dart';
import 'package:flutter_example_riverpod/domain/providers/state/auth_state.dart';
import 'package:flutter_example_riverpod/domain/repositories/authentication_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import '../../fixture/dummy_data.dart';
import 'auth_provider_test.mocks.dart';
import 'package:state_notifier_test/state_notifier_test.dart';

@GenerateNiceMocks([MockSpec<AuthenticationRepository>()])
void main() {
  late AuthenticationRepository repository;
  late AuthNotifier notifier;

  setUpAll(() {
    repository = MockAuthenticationRepository();
    notifier = AuthNotifier(repository);
  });

  stateNotifierTest<AuthNotifier, AuthState>(
    'Should throw AppException on sign in with Firebase',
    build: () => AuthNotifier(repository),
    setUp: () {
      when(repository.signIn("", ""))
          .thenAnswer((_) async => Left(ktestAppException));
      
    },
    actions: (notifier) async {
      await notifier.loginUser("", "");
    },
    expect: () => [
      const AuthState(status: AuthStatus.loading),
      AuthState(status: AuthStatus.failure, exception: ktestAppException),
    ],
  );

  stateNotifierTest<AuthNotifier, AuthState>(
    'Should return User on sign in with Firebase',
    build: () => AuthNotifier(repository),
    setUp: () {
      when(repository.signIn("", ""))
          .thenAnswer((_) async => Right(ktestFirebaseUser));
      
    },
    actions: (notifier) async {
      await notifier.loginUser("", "");
    },
    expect: () => [
      const AuthState(status: AuthStatus.loading),
      const AuthState(status: AuthStatus.success),
    ],
  );

    stateNotifierTest<AuthNotifier, AuthState>(
    'Should throw AppException on sign up with Firebase',
    build: () => AuthNotifier(repository),
    setUp: () {
      when(repository.signUp("", ""))
          .thenAnswer((_) async => Left(ktestAppException));
      
    },
    actions: (notifier) async {
      await notifier.registerUser("", "");
    },
    expect: () => [
      const AuthState(status: AuthStatus.loading),
      AuthState(status: AuthStatus.failure, exception: ktestAppException),
    ],
  );

  stateNotifierTest<AuthNotifier, AuthState>(
    'Should return User on sign up with Firebase',
    build: () => AuthNotifier(repository),
    setUp: () {
      when(repository.signUp("", ""))
          .thenAnswer((_) async => Right(ktestFirebaseUser));
      
    },
    actions: (notifier) async {
      await notifier.registerUser("", "");
    },
    expect: () => [
      const AuthState(status: AuthStatus.loading),
      const AuthState(status: AuthStatus.success),
    ],
  );
}
