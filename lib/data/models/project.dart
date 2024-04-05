// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hakaton_teamspace/data/models/team.dart';

part 'project.freezed.dart';
part 'project.g.dart';

@freezed
class Project with _$Project {
  const factory Project({
    required String uid,
    required String name,
    required Team team,
    @JsonKey(name: 'consumer_uid') required String? consumerUid,
    @JsonKey(name: 'inspector_uid') required String? inspectorUid,
    @JsonKey(name: 'created_at') required String createdAt,
    required int tasksCount,
  }) = _Project;

  factory Project.fromJson(Map<String, dynamic> json) => _$ProjectFromJson(json);
}
