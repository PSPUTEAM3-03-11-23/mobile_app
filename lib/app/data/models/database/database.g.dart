// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DataBaseImpl _$$DataBaseImplFromJson(Map<String, dynamic> json) =>
    _$DataBaseImpl(
      id: json['id'] as int,
      host: json['host'] as String,
      port: json['port'] as String,
      alerts: (json['alerts'] as List<dynamic>)
          .map((e) => Alert.fromJson(e as Map<String, dynamic>))
          .toList(),
      username: json['username'] as String,
      password: json['password'] as String,
      dbName: json['dbName'] as String,
      schema: json['schema'] as String,
      title: json['title'] as String,
      organizationId: json['organizationId'] as int,
    );

Map<String, dynamic> _$$DataBaseImplToJson(_$DataBaseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'host': instance.host,
      'port': instance.port,
      'alerts': instance.alerts,
      'username': instance.username,
      'password': instance.password,
      'dbName': instance.dbName,
      'schema': instance.schema,
      'title': instance.title,
      'organizationId': instance.organizationId,
    };
