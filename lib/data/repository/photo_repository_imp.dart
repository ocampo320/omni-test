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

  @override
  Future<List<Photo>> getPhotosByPage(int page, int itemsPerPage) async {
    try {
      final allPhotos = await photoService.getPhotos();
      final startIndex = (page - 1) * itemsPerPage;
      final endIndex = startIndex + itemsPerPage;

      if (startIndex >= allPhotos.length) {
        return [];
      }

      final photosForPage = allPhotos.sublist(startIndex, endIndex);
      return photosForPage;
    } on DataNotFoundException catch (e) {
      throw CommonFailure.noData(message: e.toString());
    } catch (e) {
      throw CommonFailure.noConnection(message: e.toString());
    }
  }
}
