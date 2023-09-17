import 'package:omni_test/core/failures/common_failure.dart';
import 'package:omni_test/data/models/Photo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_state.freezed.dart';
@freezed
abstract class BlocState with _$BlocState {
  const BlocState._();
  const factory BlocState.initial() = _Initial;

  const factory BlocState.loading() = _Loading;

  const factory BlocState.data({required List<Photo> photos}) =
      _Data;

  const factory BlocState.error({
    required CommonFailure failure,
  }) = _Error;
}