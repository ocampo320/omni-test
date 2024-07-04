import 'package:dartz/dartz.dart';
import 'package:omni_test/core/failures/common_failure.dart';
import 'package:omni_test/data/models/photo.dart';
import 'package:omni_test/data/repository/photo_repository.dart';

class FakePhotoRepositoryImpl implements PhotoRepository {
  @override
  Future<Either<CommonFailure, List<Photo>>> getPhotos() async {
    // Simulamos una lista de fotos falsas para las pruebas
    final fakePhotos = [
      Photo(id: 1, title: 'Photo 1', url: 'url1', thumbnailUrl: 'thumbnail1'),
      Photo(id: 2, title: 'Photo 2', url: 'url2', thumbnailUrl: 'thumbnail2'),
      Photo(id: 3, title: 'Photo 3', url: 'url3', thumbnailUrl: 'thumbnail3'),
    ];

    return Right(fakePhotos);
  }
}
