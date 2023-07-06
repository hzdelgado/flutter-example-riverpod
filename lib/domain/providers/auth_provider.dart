import 'package:flutter_example_riverpod/data/repositories/firebase_repository.dart';
import 'package:flutter_example_riverpod/domain/providers/state/auth_notifier.dart';
import 'package:flutter_example_riverpod/domain/providers/state/auth_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  return AuthNotifier(FirebaseRepository());
});