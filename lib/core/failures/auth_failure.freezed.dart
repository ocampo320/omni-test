// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) noData,
    required TResult Function() server,
    required TResult Function(String message) noInternet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? noData,
    TResult? Function()? server,
    TResult? Function(String message)? noInternet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? noData,
    TResult Function()? server,
    TResult Function(String message)? noInternet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoData value) noData,
    required TResult Function(_Server value) server,
    required TResult Function(NoInternet value) noInternet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoData value)? noData,
    TResult? Function(_Server value)? server,
    TResult? Function(NoInternet value)? noInternet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoData value)? noData,
    TResult Function(_Server value)? server,
    TResult Function(NoInternet value)? noInternet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res, AuthFailure>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res, $Val extends AuthFailure>
    implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_NoDataCopyWith<$Res> {
  factory _$$_NoDataCopyWith(_$_NoData value, $Res Function(_$_NoData) then) =
      __$$_NoDataCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_NoDataCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$_NoData>
    implements _$$_NoDataCopyWith<$Res> {
  __$$_NoDataCopyWithImpl(_$_NoData _value, $Res Function(_$_NoData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_NoData(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NoData extends _NoData {
  const _$_NoData({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'AuthFailure.noData(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoData &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NoDataCopyWith<_$_NoData> get copyWith =>
      __$$_NoDataCopyWithImpl<_$_NoData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) noData,
    required TResult Function() server,
    required TResult Function(String message) noInternet,
  }) {
    return noData(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? noData,
    TResult? Function()? server,
    TResult? Function(String message)? noInternet,
  }) {
    return noData?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? noData,
    TResult Function()? server,
    TResult Function(String message)? noInternet,
    required TResult orElse(),
  }) {
    if (noData != null) {
      return noData(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoData value) noData,
    required TResult Function(_Server value) server,
    required TResult Function(NoInternet value) noInternet,
  }) {
    return noData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoData value)? noData,
    TResult? Function(_Server value)? server,
    TResult? Function(NoInternet value)? noInternet,
  }) {
    return noData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoData value)? noData,
    TResult Function(_Server value)? server,
    TResult Function(NoInternet value)? noInternet,
    required TResult orElse(),
  }) {
    if (noData != null) {
      return noData(this);
    }
    return orElse();
  }
}

abstract class _NoData extends AuthFailure {
  const factory _NoData({required final String message}) = _$_NoData;
  const _NoData._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$_NoDataCopyWith<_$_NoData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ServerCopyWith<$Res> {
  factory _$$_ServerCopyWith(_$_Server value, $Res Function(_$_Server) then) =
      __$$_ServerCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ServerCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$_Server>
    implements _$$_ServerCopyWith<$Res> {
  __$$_ServerCopyWithImpl(_$_Server _value, $Res Function(_$_Server) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Server extends _Server {
  const _$_Server() : super._();

  @override
  String toString() {
    return 'AuthFailure.server()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Server);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) noData,
    required TResult Function() server,
    required TResult Function(String message) noInternet,
  }) {
    return server();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? noData,
    TResult? Function()? server,
    TResult? Function(String message)? noInternet,
  }) {
    return server?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? noData,
    TResult Function()? server,
    TResult Function(String message)? noInternet,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoData value) noData,
    required TResult Function(_Server value) server,
    required TResult Function(NoInternet value) noInternet,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoData value)? noData,
    TResult? Function(_Server value)? server,
    TResult? Function(NoInternet value)? noInternet,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoData value)? noData,
    TResult Function(_Server value)? server,
    TResult Function(NoInternet value)? noInternet,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class _Server extends AuthFailure {
  const factory _Server() = _$_Server;
  const _Server._() : super._();
}

/// @nodoc
abstract class _$$NoInternetCopyWith<$Res> {
  factory _$$NoInternetCopyWith(
          _$NoInternet value, $Res Function(_$NoInternet) then) =
      __$$NoInternetCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$NoInternetCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$NoInternet>
    implements _$$NoInternetCopyWith<$Res> {
  __$$NoInternetCopyWithImpl(
      _$NoInternet _value, $Res Function(_$NoInternet) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$NoInternet(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NoInternet extends NoInternet {
  const _$NoInternet({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'AuthFailure.noInternet(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoInternet &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoInternetCopyWith<_$NoInternet> get copyWith =>
      __$$NoInternetCopyWithImpl<_$NoInternet>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) noData,
    required TResult Function() server,
    required TResult Function(String message) noInternet,
  }) {
    return noInternet(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? noData,
    TResult? Function()? server,
    TResult? Function(String message)? noInternet,
  }) {
    return noInternet?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? noData,
    TResult Function()? server,
    TResult Function(String message)? noInternet,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoData value) noData,
    required TResult Function(_Server value) server,
    required TResult Function(NoInternet value) noInternet,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoData value)? noData,
    TResult? Function(_Server value)? server,
    TResult? Function(NoInternet value)? noInternet,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoData value)? noData,
    TResult Function(_Server value)? server,
    TResult Function(NoInternet value)? noInternet,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class NoInternet extends AuthFailure {
  const factory NoInternet({required final String message}) = _$NoInternet;
  const NoInternet._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$NoInternetCopyWith<_$NoInternet> get copyWith =>
      throw _privateConstructorUsedError;
}
