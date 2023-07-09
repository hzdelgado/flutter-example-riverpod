import 'package:flutter_example_riverpod/domain/models/dog.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'dog_state.freezed.dart';

@freezed
abstract class DogState with _$DogState {
  const factory DogState({
    @Default([]) List<Dog> dogs,
  }) = _DogState;

  const DogState._();
}