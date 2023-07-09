import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_example_riverpod/data/datasources/dog_datasource.dart';
import 'package:flutter_example_riverpod/data/repositories/firebase_repository.dart';
import 'package:flutter_example_riverpod/domain/models/dog.dart';
// ignore: library_prefixes
import 'package:flutter/services.dart' as rootBundle;

class DogRemoteDatasource extends DogDatasource {
  @override
  Future<Either<AppException, List<Dog>>> fetchAdoptionPosts() async {
    try {
      //this should call an api to get the data. for the sake of finishing this example, i'm using a json file
      final dogsResponseData =
          await rootBundle.rootBundle.loadString('data/dogs.json');
      final dogsList = json.decode(dogsResponseData) as List<dynamic>;
      final dogs = dogsList.map((d) => Dog.fromJson(d)).toList();
      return Right(dogs);
    } on Exception catch (e) {
      return Left(AppException("Asset not found", e.toString()));
    }
  }
}
