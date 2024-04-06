// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectImpl _$$ProjectImplFromJson(Map<String, dynamic> json) =>
    _$ProjectImpl(
      uid: json['uid'] as String,
      name: json['name'] as String,
      team: Team.fromJson(json['team'] as Map<String, dynamic>),
      consumerUid: json['consumer_uid'] as String?,
      inspectorUid: json['inspector_uid'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
      tasksCount: json['tasksCount'] as int,
    );

Map<String, dynamic> _$$ProjectImplToJson(_$ProjectImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'team': instance.team,
      'consumer_uid': instance.consumerUid,
      'inspector_uid': instance.inspectorUid,
      'created_at': instance.createdAt.toIso8601String(),
      'tasksCount': instance.tasksCount,
    };
