import 'package:dartz/dartz.dart';
import 'package:omni_test/core/failures/common_failure.dart';
import 'package:omni_test/core/global_exceptions.dart';
import 'package:omni_test/data/models/Photo.dart';
import 'package:omni_test/data/repository/photo_repository.dart';
import 'package:omni_test/services/photo_services.dart';

class PhotoRepositoryImpl implements PhotoRepository {
  final PhotoService photoService;

  PhotoRepositoryImpl(this.photoService);

  @override
  Future<Either<CommonFailure, List<Photo>>> getPhotos() async {
    try {
      final photos = await photoService.getPhotos();
      return right(photos);
    } on DataNotFoundException catch (e) {
      return left(CommonFailure.noData(message: e.toString()));
    } catch (e) {
      return left(CommonFailure.noConnection(message: e.toString()));
    }
  }

 
}
