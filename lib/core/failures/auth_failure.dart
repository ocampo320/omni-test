import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

/// Different kind of failures that will be handled
@freezed
class AuthFailure with _$AuthFailure {
  const AuthFailure._();

  /// When there is no data in the response
  const factory AuthFailure.noData({required String message}) = _NoData;

  /// When something went wrong in the server side
  const factory AuthFailure.server() = _Server;

  /// When is not internet connection
  const factory AuthFailure.noInternet({required String message}) = NoInternet;
  
  
}
