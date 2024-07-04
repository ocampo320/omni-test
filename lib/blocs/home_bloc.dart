import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:omni_test/blocs/home_event.dart';
import 'package:omni_test/blocs/home_state.dart';
import 'package:omni_test/core/failures/common_failure.dart';
import 'package:omni_test/data/models/photo.dart';
import 'package:omni_test/data/repository/photo_repository_imp.dart';

class HomeBloc extends Bloc<HomeEvent, BlocState> {
  final PhotoRepositoryImpl photoRepositoryImpl;
  final int itemsPerPage = 10; 
  int currentPage = 1; 
  List<Photo> currentPhotos = [];
  List<Photo> allPhotos = [];
  HomeBloc({
    required this.photoRepositoryImpl,
  }) : super(const InitialState()) {
    on<HomeStarted>(_getNews);
    on<LoadMorePhotos>(_loadMorePhotos);
  }

  FutureOr<void> _getNews(HomeStarted event, Emitter<BlocState> emit) async {
    emit(const LoadingState());

    final state = await photoRepositoryImpl.getPhotos();
    emit(
      state.fold(
        (error) => ErrorState(failure: error),
        (data) {
          allPhotos = data; 
          final photosToAdd = allPhotos
              .take(itemsPerPage)
              .toList(); 
          currentPhotos.addAll(photosToAdd);
          return DataState(photos: currentPhotos);
        },
      ),
    );
  }

 Future<void> _loadMorePhotos(
  LoadMorePhotos event, Emitter<BlocState> emit) async {
  try {
    //emit(const BlocState.loading());
    final startIndex = currentPhotos.length;
    final endIndex = startIndex + itemsPerPage;

    if (startIndex < endIndex) {
      emit(const LoadingState());
      final photosToAdd = allPhotos.sublist(startIndex, endIndex);

      if (photosToAdd.isNotEmpty) {
        currentPhotos.addAll(photosToAdd);
        currentPage++;
        emit(DataState(photos: currentPhotos));
      } else {
        emit(NoMoreDataState(photos: currentPhotos));
      }
    } else {
      emit(NoMoreDataState(photos: currentPhotos));
    }
  } catch (error) {
    emit( ErrorState(
      failure: const CommonFailure.noData(
        message: "No se pudieron cargar más datos.",
      ),
    ));
  }
}

}
