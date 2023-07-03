import 'package:flutter_example_riverpod/data/repositories/firebase_repository.dart';
import 'package:flutter_example_riverpod/ui/pages/login/providers/state/login_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final loginProvider = Provider<LoginNotifier>((ref) {
  return LoginNotifier(FirebaseRepository());
});