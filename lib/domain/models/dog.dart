import 'package:freezed_annotation/freezed_annotation.dart';

part 'dog.freezed.dart';
part 'dog.g.dart';

@freezed
class Dog with _$Dog {
  const factory Dog({
    required String name,
    required String age,
    required int gender,
    String? description,
    String? breed,
    required String url,
  }) = _Dog;

  factory Dog.fromJson(Map<String, Object?> json) => _$DogFromJson(json);
}
