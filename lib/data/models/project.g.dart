// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectImpl _$$ProjectImplFromJson(Map<String, dynamic> json) =>
    _$ProjectImpl(
      uid: json['uid'] as String,
      name: json['name'] as String,
      parentTeamUid: json['parentTeamUid'] as String,
      consumerUid: json['consumerUid'] as String,
      inspectorUid: json['inspectorUid'] as String,
    );

Map<String, dynamic> _$$ProjectImplToJson(_$ProjectImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'parentTeamUid': instance.parentTeamUid,
      'consumerUid': instance.consumerUid,
      'inspectorUid': instance.inspectorUid,
    };
