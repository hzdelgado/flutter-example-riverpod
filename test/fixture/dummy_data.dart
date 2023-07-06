import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_example_riverpod/data/repositories/firebase_repository.dart';
import 'package:mockito/mockito.dart';

final AppException ktestAppException = AppException('', '');
final FakeUser ktestFirebaseUser = FakeUser();

class FakeUser extends Fake implements User {}
