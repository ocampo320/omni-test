// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? data,
    TResult? Function(String message)? noData,
    TResult? Function(String message, int code)? server,
    TResult? Function(String message)? noConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? data,
    TResult Function(String message)? noData,
    TResult Function(String message, int code)? server,
    TResult Function(String message)? noConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataFailure value) data,
    required TResult Function(NoDataFailure value) noData,
    required TResult Function(ServerFailure value) server,
    required TResult Function(NoConnectionFailure value) noConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DataFailure value)? data,
    TResult? Function(NoDataFailure value)? noData,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(NoConnectionFailure value)? noConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataFailure value)? data,
    TResult Function(NoDataFailure value)? noData,
    TResult Function(ServerFailure value)? server,
    TResult Function(NoConnectionFailure value)? noConnection,
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
      _$CommonFailureCopyWithImpl<$Res, CommonFailure>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$CommonFailureCopyWithImpl<$Res, $Val extends CommonFailure>
    implements $CommonFailureCopyWith<$Res> {
  _$CommonFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataFailureCopyWith<$Res>
    implements $CommonFailureCopyWith<$Res> {
  factory _$$DataFailureCopyWith(
          _$DataFailure value, $Res Function(_$DataFailure) then) =
      __$$DataFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$DataFailureCopyWithImpl<$Res>
    extends _$CommonFailureCopyWithImpl<$Res, _$DataFailure>
    implements _$$DataFailureCopyWith<$Res> {
  __$$DataFailureCopyWithImpl(
      _$DataFailure _value, $Res Function(_$DataFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$DataFailure(
      message: null == message
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
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataFailureCopyWith<_$DataFailure> get copyWith =>
      __$$DataFailureCopyWithImpl<_$DataFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) data,
    required TResult Function(String message) noData,
    required TResult Function(String message, int code) server,
    required TResult Function(String message) noConnection,
  }) {
    return data(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? data,
    TResult? Function(String message)? noData,
    TResult? Function(String message, int code)? server,
    TResult? Function(String message)? noConnection,
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
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DataFailure value)? data,
    TResult? Function(NoDataFailure value)? noData,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(NoConnectionFailure value)? noConnection,
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
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$NoDataFailureCopyWithImpl<$Res>
    extends _$CommonFailureCopyWithImpl<$Res, _$NoDataFailure>
    implements _$$NoDataFailureCopyWith<$Res> {
  __$$NoDataFailureCopyWithImpl(
      _$NoDataFailure _value, $Res Function(_$NoDataFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$NoDataFailure(
      message: null == message
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
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoDataFailureCopyWith<_$NoDataFailure> get copyWith =>
      __$$NoDataFailureCopyWithImpl<_$NoDataFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) data,
    required TResult Function(String message) noData,
    required TResult Function(String message, int code) server,
    required TResult Function(String message) noConnection,
  }) {
    return noData(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? data,
    TResult? Function(String message)? noData,
    TResult? Function(String message, int code)? server,
    TResult? Function(String message)? noConnection,
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
  }) {
    return noData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DataFailure value)? data,
    TResult? Function(NoDataFailure value)? noData,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(NoConnectionFailure value)? noConnection,
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
  @useResult
  $Res call({String message, int code});
}

/// @nodoc
class __$$ServerFailureCopyWithImpl<$Res>
    extends _$CommonFailureCopyWithImpl<$Res, _$ServerFailure>
    implements _$$ServerFailureCopyWith<$Res> {
  __$$ServerFailureCopyWithImpl(
      _$ServerFailure _value, $Res Function(_$ServerFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = null,
  }) {
    return _then(_$ServerFailure(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
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
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerFailureCopyWith<_$ServerFailure> get copyWith =>
      __$$ServerFailureCopyWithImpl<_$ServerFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) data,
    required TResult Function(String message) noData,
    required TResult Function(String message, int code) server,
    required TResult Function(String message) noConnection,
  }) {
    return server(message, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? data,
    TResult? Function(String message)? noData,
    TResult? Function(String message, int code)? server,
    TResult? Function(String message)? noConnection,
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
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DataFailure value)? data,
    TResult? Function(NoDataFailure value)? noData,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(NoConnectionFailure value)? noConnection,
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
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$NoConnectionFailureCopyWithImpl<$Res>
    extends _$CommonFailureCopyWithImpl<$Res, _$NoConnectionFailure>
    implements _$$NoConnectionFailureCopyWith<$Res> {
  __$$NoConnectionFailureCopyWithImpl(
      _$NoConnectionFailure _value, $Res Function(_$NoConnectionFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$NoConnectionFailure(
      message: null == message
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
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
  }) {
    return noConnection(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? data,
    TResult? Function(String message)? noData,
    TResult? Function(String message, int code)? server,
    TResult? Function(String message)? noConnection,
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
  }) {
    return noConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DataFailure value)? data,
    TResult? Function(NoDataFailure value)? noData,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(NoConnectionFailure value)? noConnection,
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
