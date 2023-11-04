// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      tgId: json['tgId'] as String,
      fullName: json['fullName'] as String,
      isDeactivated: json['isDeactivated'] as String,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'tgId': instance.tgId,
      'fullName': instance.fullName,
      'isDeactivated': instance.isDeactivated,
    };
