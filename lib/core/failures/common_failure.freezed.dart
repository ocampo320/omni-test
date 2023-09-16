// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'common_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CommonFailure {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) data,
    required TResult Function(String message) noData,
    required TResult Function(String message, int code) server,
    required TResult Function(String message) noConnection,
    required TResult Function(String message) userLevel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? data,
    TResult Function(String message)? noData,
    TResult Function(String message, int code)? server,
    TResult Function(String message)? noConnection,
    TResult Function(String message)? userLevel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? data,
    TResult Function(String message)? noData,
    TResult Function(String message, int code)? server,
    TResult Function(String message)? noConnection,
    TResult Function(String message)? userLevel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataFailure value) data,
    required TResult Function(NoDataFailure value) noData,
    required TResult Function(ServerFailure value) server,
    required TResult Function(NoConnectionFailure value) noConnection,
    required TResult Function(_UserLevel value) userLevel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DataFailure value)? data,
    TResult Function(NoDataFailure value)? noData,
    TResult Function(ServerFailure value)? server,
    TResult Function(NoConnectionFailure value)? noConnection,
    TResult Function(_UserLevel value)? userLevel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataFailure value)? data,
    TResult Function(NoDataFailure value)? noData,
    TResult Function(ServerFailure value)? server,
    TResult Function(NoConnectionFailure value)? noConnection,
    TResult Function(_UserLevel value)? userLevel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommonFailureCopyWith<CommonFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonFailureCopyWith<$Res> {
  factory $CommonFailureCopyWith(
          CommonFailure value, $Res Function(CommonFailure) then) =
      _$CommonFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$CommonFailureCopyWithImpl<$Res>
    implements $CommonFailureCopyWith<$Res> {
  _$CommonFailureCopyWithImpl(this._value, this._then);

  final CommonFailure _value;
  // ignore: unused_field
  final $Res Function(CommonFailure) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$DataFailureCopyWith<$Res>
    implements $CommonFailureCopyWith<$Res> {
  factory _$$DataFailureCopyWith(
          _$DataFailure value, $Res Function(_$DataFailure) then) =
      __$$DataFailureCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$$DataFailureCopyWithImpl<$Res>
    extends _$CommonFailureCopyWithImpl<$Res>
    implements _$$DataFailureCopyWith<$Res> {
  __$$DataFailureCopyWithImpl(
      _$DataFailure _value, $Res Function(_$DataFailure) _then)
      : super(_value, (v) => _then(v as _$DataFailure));

  @override
  _$DataFailure get _value => super._value as _$DataFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$DataFailure(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DataFailure extends DataFailure {
  const _$DataFailure({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'CommonFailure.data(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataFailure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$DataFailureCopyWith<_$DataFailure> get copyWith =>
      __$$DataFailureCopyWithImpl<_$DataFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) data,
    required TResult Function(String message) noData,
    required TResult Function(String message, int code) server,
    required TResult Function(String message) noConnection,
    required TResult Function(String message) userLevel,
  }) {
    return data(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? data,
    TResult Function(String message)? noData,
    TResult Function(String message, int code)? server,
    TResult Function(String message)? noConnection,
    TResult Function(String message)? userLevel,
  }) {
    return data?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? data,
    TResult Function(String message)? noData,
    TResult Function(String message, int code)? server,
    TResult Function(String message)? noConnection,
    TResult Function(String message)? userLevel,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataFailure value) data,
    required TResult Function(NoDataFailure value) noData,
    required TResult Function(ServerFailure value) server,
    required TResult Function(NoConnectionFailure value) noConnection,
    required TResult Function(_UserLevel value) userLevel,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DataFailure value)? data,
    TResult Function(NoDataFailure value)? noData,
    TResult Function(ServerFailure value)? server,
    TResult Function(NoConnectionFailure value)? noConnection,
    TResult Function(_UserLevel value)? userLevel,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataFailure value)? data,
    TResult Function(NoDataFailure value)? noData,
    TResult Function(ServerFailure value)? server,
    TResult Function(NoConnectionFailure value)? noConnection,
    TResult Function(_UserLevel value)? userLevel,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class DataFailure extends CommonFailure {
  const factory DataFailure({required final String message}) = _$DataFailure;
  const DataFailure._() : super._();

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$DataFailureCopyWith<_$DataFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoDataFailureCopyWith<$Res>
    implements $CommonFailureCopyWith<$Res> {
  factory _$$NoDataFailureCopyWith(
          _$NoDataFailure value, $Res Function(_$NoDataFailure) then) =
      __$$NoDataFailureCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$$NoDataFailureCopyWithImpl<$Res>
    extends _$CommonFailureCopyWithImpl<$Res>
    implements _$$NoDataFailureCopyWith<$Res> {
  __$$NoDataFailureCopyWithImpl(
      _$NoDataFailure _value, $Res Function(_$NoDataFailure) _then)
      : super(_value, (v) => _then(v as _$NoDataFailure));

  @override
  _$NoDataFailure get _value => super._value as _$NoDataFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$NoDataFailure(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NoDataFailure extends NoDataFailure {
  const _$NoDataFailure({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'CommonFailure.noData(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoDataFailure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$NoDataFailureCopyWith<_$NoDataFailure> get copyWith =>
      __$$NoDataFailureCopyWithImpl<_$NoDataFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) data,
    required TResult Function(String message) noData,
    required TResult Function(String message, int code) server,
    required TResult Function(String message) noConnection,
    required TResult Function(String message) userLevel,
  }) {
    return noData(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? data,
    TResult Function(String message)? noData,
    TResult Function(String message, int code)? server,
    TResult Function(String message)? noConnection,
    TResult Function(String message)? userLevel,
  }) {
    return noData?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? data,
    TResult Function(String message)? noData,
    TResult Function(String message, int code)? server,
    TResult Function(String message)? noConnection,
    TResult Function(String message)? userLevel,
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
    required TResult Function(DataFailure value) data,
    required TResult Function(NoDataFailure value) noData,
    required TResult Function(ServerFailure value) server,
    required TResult Function(NoConnectionFailure value) noConnection,
    required TResult Function(_UserLevel value) userLevel,
  }) {
    return noData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DataFailure value)? data,
    TResult Function(NoDataFailure value)? noData,
    TResult Function(ServerFailure value)? server,
    TResult Function(NoConnectionFailure value)? noConnection,
    TResult Function(_UserLevel value)? userLevel,
  }) {
    return noData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataFailure value)? data,
    TResult Function(NoDataFailure value)? noData,
    TResult Function(ServerFailure value)? server,
    TResult Function(NoConnectionFailure value)? noConnection,
    TResult Function(_UserLevel value)? userLevel,
    required TResult orElse(),
  }) {
    if (noData != null) {
      return noData(this);
    }
    return orElse();
  }
}

abstract class NoDataFailure extends CommonFailure {
  const factory NoDataFailure({required final String message}) =
      _$NoDataFailure;
  const NoDataFailure._() : super._();

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$NoDataFailureCopyWith<_$NoDataFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerFailureCopyWith<$Res>
    implements $CommonFailureCopyWith<$Res> {
  factory _$$ServerFailureCopyWith(
          _$ServerFailure value, $Res Function(_$ServerFailure) then) =
      __$$ServerFailureCopyWithImpl<$Res>;
  @override
  $Res call({String message, int code});
}

/// @nodoc
class __$$ServerFailureCopyWithImpl<$Res>
    extends _$CommonFailureCopyWithImpl<$Res>
    implements _$$ServerFailureCopyWith<$Res> {
  __$$ServerFailureCopyWithImpl(
      _$ServerFailure _value, $Res Function(_$ServerFailure) _then)
      : super(_value, (v) => _then(v as _$ServerFailure));

  @override
  _$ServerFailure get _value => super._value as _$ServerFailure;

  @override
  $Res call({
    Object? message = freezed,
    Object? code = freezed,
  }) {
    return _then(_$ServerFailure(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ServerFailure extends ServerFailure {
  const _$ServerFailure({required this.message, required this.code})
      : super._();

  @override
  final String message;
  @override
  final int code;

  @override
  String toString() {
    return 'CommonFailure.server(message: $message, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerFailure &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.code, code));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(code));

  @JsonKey(ignore: true)
  @override
  _$$ServerFailureCopyWith<_$ServerFailure> get copyWith =>
      __$$ServerFailureCopyWithImpl<_$ServerFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) data,
    required TResult Function(String message) noData,
    required TResult Function(String message, int code) server,
    required TResult Function(String message) noConnection,
    required TResult Function(String message) userLevel,
  }) {
    return server(message, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? data,
    TResult Function(String message)? noData,
    TResult Function(String message, int code)? server,
    TResult Function(String message)? noConnection,
    TResult Function(String message)? userLevel,
  }) {
    return server?.call(message, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? data,
    TResult Function(String message)? noData,
    TResult Function(String message, int code)? server,
    TResult Function(String message)? noConnection,
    TResult Function(String message)? userLevel,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(message, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataFailure value) data,
    required TResult Function(NoDataFailure value) noData,
    required TResult Function(ServerFailure value) server,
    required TResult Function(NoConnectionFailure value) noConnection,
    required TResult Function(_UserLevel value) userLevel,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DataFailure value)? data,
    TResult Function(NoDataFailure value)? noData,
    TResult Function(ServerFailure value)? server,
    TResult Function(NoConnectionFailure value)? noConnection,
    TResult Function(_UserLevel value)? userLevel,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataFailure value)? data,
    TResult Function(NoDataFailure value)? noData,
    TResult Function(ServerFailure value)? server,
    TResult Function(NoConnectionFailure value)? noConnection,
    TResult Function(_UserLevel value)? userLevel,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class ServerFailure extends CommonFailure {
  const factory ServerFailure(
      {required final String message,
      required final int code}) = _$ServerFailure;
  const ServerFailure._() : super._();

  @override
  String get message;
  int get code;
  @override
  @JsonKey(ignore: true)
  _$$ServerFailureCopyWith<_$ServerFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoConnectionFailureCopyWith<$Res>
    implements $CommonFailureCopyWith<$Res> {
  factory _$$NoConnectionFailureCopyWith(_$NoConnectionFailure value,
          $Res Function(_$NoConnectionFailure) then) =
      __$$NoConnectionFailureCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$$NoConnectionFailureCopyWithImpl<$Res>
    extends _$CommonFailureCopyWithImpl<$Res>
    implements _$$NoConnectionFailureCopyWith<$Res> {
  __$$NoConnectionFailureCopyWithImpl(
      _$NoConnectionFailure _value, $Res Function(_$NoConnectionFailure) _then)
      : super(_value, (v) => _then(v as _$NoConnectionFailure));

  @override
  _$NoConnectionFailure get _value => super._value as _$NoConnectionFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$NoConnectionFailure(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NoConnectionFailure extends NoConnectionFailure {
  const _$NoConnectionFailure({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'CommonFailure.noConnection(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoConnectionFailure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$NoConnectionFailureCopyWith<_$NoConnectionFailure> get copyWith =>
      __$$NoConnectionFailureCopyWithImpl<_$NoConnectionFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) data,
    required TResult Function(String message) noData,
    required TResult Function(String message, int code) server,
    required TResult Function(String message) noConnection,
    required TResult Function(String message) userLevel,
  }) {
    return noConnection(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? data,
    TResult Function(String message)? noData,
    TResult Function(String message, int code)? server,
    TResult Function(String message)? noConnection,
    TResult Function(String message)? userLevel,
  }) {
    return noConnection?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? data,
    TResult Function(String message)? noData,
    TResult Function(String message, int code)? server,
    TResult Function(String message)? noConnection,
    TResult Function(String message)? userLevel,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataFailure value) data,
    required TResult Function(NoDataFailure value) noData,
    required TResult Function(ServerFailure value) server,
    required TResult Function(NoConnectionFailure value) noConnection,
    required TResult Function(_UserLevel value) userLevel,
  }) {
    return noConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DataFailure value)? data,
    TResult Function(NoDataFailure value)? noData,
    TResult Function(ServerFailure value)? server,
    TResult Function(NoConnectionFailure value)? noConnection,
    TResult Function(_UserLevel value)? userLevel,
  }) {
    return noConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataFailure value)? data,
    TResult Function(NoDataFailure value)? noData,
    TResult Function(ServerFailure value)? server,
    TResult Function(NoConnectionFailure value)? noConnection,
    TResult Function(_UserLevel value)? userLevel,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection(this);
    }
    return orElse();
  }
}

abstract class NoConnectionFailure extends CommonFailure {
  const factory NoConnectionFailure({required final String message}) =
      _$NoConnectionFailure;
  const NoConnectionFailure._() : super._();

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$NoConnectionFailureCopyWith<_$NoConnectionFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UserLevelCopyWith<$Res>
    implements $CommonFailureCopyWith<$Res> {
  factory _$$_UserLevelCopyWith(
          _$_UserLevel value, $Res Function(_$_UserLevel) then) =
      __$$_UserLevelCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$$_UserLevelCopyWithImpl<$Res> extends _$CommonFailureCopyWithImpl<$Res>
    implements _$$_UserLevelCopyWith<$Res> {
  __$$_UserLevelCopyWithImpl(
      _$_UserLevel _value, $Res Function(_$_UserLevel) _then)
      : super(_value, (v) => _then(v as _$_UserLevel));

  @override
  _$_UserLevel get _value => super._value as _$_UserLevel;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_UserLevel(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UserLevel extends _UserLevel {
  const _$_UserLevel({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'CommonFailure.userLevel(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserLevel &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_UserLevelCopyWith<_$_UserLevel> get copyWith =>
      __$$_UserLevelCopyWithImpl<_$_UserLevel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) data,
    required TResult Function(String message) noData,
    required TResult Function(String message, int code) server,
    required TResult Function(String message) noConnection,
    required TResult Function(String message) userLevel,
  }) {
    return userLevel(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? data,
    TResult Function(String message)? noData,
    TResult Function(String message, int code)? server,
    TResult Function(String message)? noConnection,
    TResult Function(String message)? userLevel,
  }) {
    return userLevel?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? data,
    TResult Function(String message)? noData,
    TResult Function(String message, int code)? server,
    TResult Function(String message)? noConnection,
    TResult Function(String message)? userLevel,
    required TResult orElse(),
  }) {
    if (userLevel != null) {
      return userLevel(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataFailure value) data,
    required TResult Function(NoDataFailure value) noData,
    required TResult Function(ServerFailure value) server,
    required TResult Function(NoConnectionFailure value) noConnection,
    required TResult Function(_UserLevel value) userLevel,
  }) {
    return userLevel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DataFailure value)? data,
    TResult Function(NoDataFailure value)? noData,
    TResult Function(ServerFailure value)? server,
    TResult Function(NoConnectionFailure value)? noConnection,
    TResult Function(_UserLevel value)? userLevel,
  }) {
    return userLevel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataFailure value)? data,
    TResult Function(NoDataFailure value)? noData,
    TResult Function(ServerFailure value)? server,
    TResult Function(NoConnectionFailure value)? noConnection,
    TResult Function(_UserLevel value)? userLevel,
    required TResult orElse(),
  }) {
    if (userLevel != null) {
      return userLevel(this);
    }
    return orElse();
  }
}

abstract class _UserLevel extends CommonFailure {
  const factory _UserLevel({required final String message}) = _$_UserLevel;
  const _UserLevel._() : super._();

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_UserLevelCopyWith<_$_UserLevel> get copyWith =>
      throw _privateConstructorUsedError;
}
