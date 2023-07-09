import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_example_riverpod/data/repositories/firebase_repository.dart';
import 'package:flutter_example_riverpod/domain/models/dog.dart';
import 'package:mockito/mockito.dart';

final AppException ktestAppException = AppException('', '');
final FakeUser ktestFirebaseUser = FakeUser();

final List<Dog> ktestDummyPosts = generateDummyPosts();

class FakeUser extends Fake implements User {}

List<Dog> generateDummyPosts() {
  return [
    const Dog(
        name: "Test",
        age: "1 año",
        gender: 0,
        description: "Test",
        breed: "Test",
        url: "")
  ];
}
