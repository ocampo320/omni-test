import 'package:dartz/dartz.dart';
import 'package:omni_test/core/failures/common_failure.dart';
import 'package:omni_test/data/models/photo.dart';

abstract class PhotoRepository {
  Future<Either<CommonFailure,List<Photo>>> getPhotos();
 
}
