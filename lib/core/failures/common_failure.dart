import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_failure.freezed.dart';

/// Different kind of failures that will be handled
@freezed
class CommonFailure with _$CommonFailure {
  const CommonFailure._();

  /// When something went wrong because of the data that has been sent
  const factory CommonFailure.data({required String message}) = DataFailure;

  /// When there is no data in the response
  const factory CommonFailure.noData({required String message}) = NoDataFailure;

  /// When something went wrong in the server side
  const factory CommonFailure.server({
    required String message,
    required int code,
  }) = ServerFailure;

  /// When there is not internet connection
  const factory CommonFailure.noConnection({required String message}) =
      NoConnectionFailure;

}
