import 'package:flutter_example_riverpod/data/datasources/dog_datasource.dart';
import 'package:flutter_example_riverpod/ui/pages/home/providers/state/dog_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DogNotifier extends StateNotifier<DogState> {
  final DogDatasource datasource;
  DogNotifier(this.datasource) : super(const DogState()) {
    getAdoptionPosts();
  }

  Future<void> getAdoptionPosts() async {
    final res = await datasource.fetchAdoptionPosts();
    res.fold((l) => state = state.copyWith(dogs: []),
        (r) => state = state.copyWith(dogs: r));
  }
}
