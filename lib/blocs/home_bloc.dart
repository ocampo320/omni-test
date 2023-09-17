import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:omni_test/blocs/home_event.dart';
import 'package:omni_test/blocs/home_state.dart';
import 'package:omni_test/data/repository/photo_repository_imp.dart';

class HomeBloc extends Bloc<HomeEvent, BlocState> {
  final PhotoRepositoryImpl photoRepositoryImpl;

  HomeBloc({
    required this.photoRepositoryImpl,
  }) : super(const BlocState.initial()) {
    on<HomeStarted>(_getNews);
  }

  FutureOr<void> _getNews(HomeStarted event, Emitter<BlocState> emit) async {
    emit(const BlocState.loading());

    final state = await photoRepositoryImpl.getPhotos();
    emit(
      state.fold(
        (error) => BlocState.error(failure: error),
        (data) => BlocState.data(photos: data),
      ),
    );
  }
}
