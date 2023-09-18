import 'package:dartz/dartz.dart';
import 'package:omni_test/core/failures/common_failure.dart';
import 'package:omni_test/data/models/Photo.dart';

abstract class PhotoRepository {
  Future<Either<CommonFailure,List<Photo>>> getPhotos();
  Future<List<Photo>> getPhotosByPage(int page, int itemsPerPage);
}
