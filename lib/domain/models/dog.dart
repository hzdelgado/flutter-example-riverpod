
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dog.freezed.dart';
part 'dog.g.dart';

@freezed
class Dog with _$Dog {
  const factory Dog({
    required String name,
    required String age,
    required int gender,
    required String description,
    required String breed,
  }) = _Dog;

  factory Dog.fromJson(Map<String, Object?> json)
  => _$DogFromJson(json);
}