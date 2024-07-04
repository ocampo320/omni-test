import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:omni_test/core/failures/common_failure.dart';
import 'package:omni_test/core/global_exceptions.dart';
import 'package:omni_test/data/models/photo.dart';
import 'package:omni_test/data/repository/photo_repository.dart';
import 'package:omni_test/data/repository/photo_repository_imp.dart';

import 'package:mockito/mockito.dart';
import 'package:omni_test/services/photo_services.dart';

class MockPhotoService extends Mock implements PhotoService {}

void main() {
  late PhotoRepository repository;
  late MockPhotoService mockPhotoService;

  setUp(() {
    mockPhotoService = MockPhotoService();
    repository = PhotoRepositoryImpl(mockPhotoService);
  });

  group('getPhotos', () {
    final testPhotos = [
      Photo(albumId: 1, id: 1, title: 'Photo 1', url: 'url1', thumbnailUrl: 'thumbnail1'),
      Photo(albumId: 2, id: 2, title: 'Photo 2', url: 'url2', thumbnailUrl: 'thumbnail2'),
    ];

    test('should return a list of photos when the service succeeds', () async {
      // Arrange
     // when(mockPhotoService.getPhotos()).thenAnswer((_) async => testPhotos);

      // Act
      final result = await repository.getPhotos();

      // Assert
      expect(result, right(testPhotos));
      verify(mockPhotoService.getPhotos()).called(1);
      verifyNoMoreInteractions(mockPhotoService);
    });

    test('should return a CommonFailure when DataNotFoundException occurs', () async {
      // Arrange
      when(mockPhotoService.getPhotos()).thenThrow(DataNotFoundException('Data not found'));

      // Act
      final result = await repository.getPhotos();

      // Assert
      expect(result, left(const CommonFailure.noData(message: 'Data not found')));
      verify(mockPhotoService.getPhotos()).called(1);
      verifyNoMoreInteractions(mockPhotoService);
    });

    test('should return a CommonFailure when an exception occurs', () async {
      // Arrange
      when(mockPhotoService.getPhotos()).thenThrow(Exception('Something went wrong'));

      // Act
      final result = await repository.getPhotos();

      // Assert
      expect(result, left(const CommonFailure.noConnection(message: 'Something went wrong')));
      verify(mockPhotoService.getPhotos()).called(1);
      verifyNoMoreInteractions(mockPhotoService);
    });
  });
}
