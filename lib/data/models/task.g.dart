// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskImpl _$$TaskImplFromJson(Map<String, dynamic> json) => _$TaskImpl(
      uid: json['uid'] as String,
      number: json['number'] as int,
      projectUid: json['parent_project_uid'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      executerUid: json['executer_uid'] as String?,
      storyPointsUid: json['story_points_uid'] as String?,
      importance: json['importance'] as String?,
      step: json['step'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
      state: json['state'] as String,
      category: json['category'] as String,
    );

Map<String, dynamic> _$$TaskImplToJson(_$TaskImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'number': instance.number,
      'parent_project_uid': instance.projectUid,
      'name': instance.name,
      'description': instance.description,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'executer_uid': instance.executerUid,
      'story_points_uid': instance.storyPointsUid,
      'importance': instance.importance,
      'step': instance.step,
      'created_at': instance.createdAt.toIso8601String(),
      'state': instance.state,
      'category': instance.category,
    };
