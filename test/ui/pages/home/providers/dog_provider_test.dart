import 'package:dartz/dartz.dart';
import 'package:flutter_example_riverpod/data/datasources/dog_datasource.dart';
import 'package:flutter_example_riverpod/ui/pages/home/providers/state/dog_notifier.dart';
import 'package:flutter_example_riverpod/ui/pages/home/providers/state/dog_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:state_notifier_test/state_notifier_test.dart';

import '../../../../fixture/dummy_data.dart';
import 'dog_provider_test.mocks.dart';

@GenerateNiceMocks([MockSpec<DogDatasource>()])
void main() {
  late DogDatasource datasource;
  late DogNotifier notifier;

  setUpAll(() {
    datasource = MockDogDatasource();
    notifier = DogNotifier(datasource);
  });

  stateNotifierTest<DogNotifier, DogState>(
    'Should throw AppException on call to function fetch adoption post',
    build: () => notifier,
    setUp: () {
      when(datasource.fetchAdoptionPosts())
          .thenAnswer((_) async => Left(ktestAppException));
    },
    actions: (notifier) async {
      await notifier.getAdoptionPosts();
    },
    expect: () => [
      const DogState(),
    ],
  );

  stateNotifierTest<DogNotifier, DogState>(
    'Should return dogs on call to function fetch adoption post',
    build: () => DogNotifier(datasource),
    setUp: () {
      when(datasource.fetchAdoptionPosts())
          .thenAnswer((_) async => Right(ktestDummyPosts));
    },
    actions: (notifier) async {
      await notifier.getAdoptionPosts();
    },
    expect: () => [
      DogState(dogs: ktestDummyPosts),
    ],
  );
}
