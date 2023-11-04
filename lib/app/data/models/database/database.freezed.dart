// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'database.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataBase _$DataBaseFromJson(Map<String, dynamic> json) {
  return _DataBase.fromJson(json);
}

/// @nodoc
mixin _$DataBase {
  String get host => throw _privateConstructorUsedError;
  String get port => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get dbName => throw _privateConstructorUsedError;
  String get schema => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get organizationId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataBaseCopyWith<DataBase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataBaseCopyWith<$Res> {
  factory $DataBaseCopyWith(DataBase value, $Res Function(DataBase) then) =
      _$DataBaseCopyWithImpl<$Res, DataBase>;
  @useResult
  $Res call(
      {String host,
      String port,
      String username,
      String password,
      String dbName,
      String schema,
      String title,
      int organizationId});
}

/// @nodoc
class _$DataBaseCopyWithImpl<$Res, $Val extends DataBase>
    implements $DataBaseCopyWith<$Res> {
  _$DataBaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? host = null,
    Object? port = null,
    Object? username = null,
    Object? password = null,
    Object? dbName = null,
    Object? schema = null,
    Object? title = null,
    Object? organizationId = null,
  }) {
    return _then(_value.copyWith(
      host: null == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String,
      port: null == port
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      dbName: null == dbName
          ? _value.dbName
          : dbName // ignore: cast_nullable_to_non_nullable
              as String,
      schema: null == schema
          ? _value.schema
          : schema // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      organizationId: null == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataBaseImplCopyWith<$Res>
    implements $DataBaseCopyWith<$Res> {
  factory _$$DataBaseImplCopyWith(
          _$DataBaseImpl value, $Res Function(_$DataBaseImpl) then) =
      __$$DataBaseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String host,
      String port,
      String username,
      String password,
      String dbName,
      String schema,
      String title,
      int organizationId});
}

/// @nodoc
class __$$DataBaseImplCopyWithImpl<$Res>
    extends _$DataBaseCopyWithImpl<$Res, _$DataBaseImpl>
    implements _$$DataBaseImplCopyWith<$Res> {
  __$$DataBaseImplCopyWithImpl(
      _$DataBaseImpl _value, $Res Function(_$DataBaseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? host = null,
    Object? port = null,
    Object? username = null,
    Object? password = null,
    Object? dbName = null,
    Object? schema = null,
    Object? title = null,
    Object? organizationId = null,
  }) {
    return _then(_$DataBaseImpl(
      host: null == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String,
      port: null == port
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      dbName: null == dbName
          ? _value.dbName
          : dbName // ignore: cast_nullable_to_non_nullable
              as String,
      schema: null == schema
          ? _value.schema
          : schema // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      organizationId: null == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataBaseImpl implements _DataBase {
  _$DataBaseImpl(
      {required this.host,
      required this.port,
      required this.username,
      required this.password,
      required this.dbName,
      required this.schema,
      required this.title,
      required this.organizationId});

  factory _$DataBaseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataBaseImplFromJson(json);

  @override
  final String host;
  @override
  final String port;
  @override
  final String username;
  @override
  final String password;
  @override
  final String dbName;
  @override
  final String schema;
  @override
  final String title;
  @override
  final int organizationId;

  @override
  String toString() {
    return 'DataBase(host: $host, port: $port, username: $username, password: $password, dbName: $dbName, schema: $schema, title: $title, organizationId: $organizationId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataBaseImpl &&
            (identical(other.host, host) || other.host == host) &&
            (identical(other.port, port) || other.port == port) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.dbName, dbName) || other.dbName == dbName) &&
            (identical(other.schema, schema) || other.schema == schema) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.organizationId, organizationId) ||
                other.organizationId == organizationId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, host, port, username, password,
      dbName, schema, title, organizationId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataBaseImplCopyWith<_$DataBaseImpl> get copyWith =>
      __$$DataBaseImplCopyWithImpl<_$DataBaseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataBaseImplToJson(
      this,
    );
  }
}

abstract class _DataBase implements DataBase {
  factory _DataBase(
      {required final String host,
      required final String port,
      required final String username,
      required final String password,
      required final String dbName,
      required final String schema,
      required final String title,
      required final int organizationId}) = _$DataBaseImpl;

  factory _DataBase.fromJson(Map<String, dynamic> json) =
      _$DataBaseImpl.fromJson;

  @override
  String get host;
  @override
  String get port;
  @override
  String get username;
  @override
  String get password;
  @override
  String get dbName;
  @override
  String get schema;
  @override
  String get title;
  @override
  int get organizationId;
  @override
  @JsonKey(ignore: true)
  _$$DataBaseImplCopyWith<_$DataBaseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
