// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alert.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AlertImpl _$$AlertImplFromJson(Map<String, dynamic> json) => _$AlertImpl(
      id: json['id'] as int,
      dbId: json['dbId'] as int,
      error: json['error'] as String,
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$AlertImplToJson(_$AlertImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dbId': instance.dbId,
      'error': instance.error,
      'date': instance.date.toIso8601String(),
    };
