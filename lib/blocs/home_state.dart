 import 'package:omni_test/core/failures/common_failure.dart';
import 'package:omni_test/data/models/photo.dart';

abstract class BlocState {
  const BlocState();
}

class InitialState extends BlocState {
  const InitialState();
}

class LoadingState extends BlocState {
  const LoadingState();
}

class DataState extends BlocState {
  final List<Photo> photos;

  DataState({required this.photos});
}

class NoMoreDataState extends BlocState {
  final List<Photo> photos;
  const NoMoreDataState({required this.photos});
}

class ErrorState extends BlocState {
  final CommonFailure failure;

  ErrorState({required this.failure});
}
