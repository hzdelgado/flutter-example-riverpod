import 'package:flutter_example_riverpod/data/datasources/dog_remote_datasource.dart';
import 'package:flutter_example_riverpod/ui/pages/home/providers/state/dog_notifier.dart';
import 'package:flutter_example_riverpod/ui/pages/home/providers/state/dog_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dogProvider = StateNotifierProvider<DogNotifier, DogState>((ref) {
  return DogNotifier(DogRemoteDatasource());
});
