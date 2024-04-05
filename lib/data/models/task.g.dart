// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskImpl _$$TaskImplFromJson(Map<String, dynamic> json) => _$TaskImpl(
      uid: json['uid'] as String,
      number: json['number'] as int,
      projectUid: json['projectUid'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      executerUid: json['executerUid'] as String,
      storyPoints: json['storyPoints'] as int,
      difficulty: json['difficulty'] as int,
    );

Map<String, dynamic> _$$TaskImplToJson(_$TaskImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'number': instance.number,
      'projectUid': instance.projectUid,
      'name': instance.name,
      'description': instance.description,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'executerUid': instance.executerUid,
      'storyPoints': instance.storyPoints,
      'difficulty': instance.difficulty,
    };
