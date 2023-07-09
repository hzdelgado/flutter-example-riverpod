import 'package:dartz/dartz.dart';

import '../../domain/models/dog.dart';
import '../repositories/firebase_repository.dart';

abstract class DogDatasource {
  Future<Either<AppException, List<Dog>>> fetchAdoptionPosts();

}