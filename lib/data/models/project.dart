// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'project.freezed.dart';
part 'project.g.dart';

@freezed
class Project with _$Project {
  const factory Project({
    required String uid,
    required String name,
    @JsonKey(name: 'team_uid') required String teamUid,
    @JsonKey(name: 'consumer_uid') required String? consumerUid,
    @JsonKey(name: 'inspector_uid') required String? inspectorUid,
    @JsonKey(name: 'created_at') required String createdAt,
    required int tasksCount,
  }) = _Project;

  factory Project.fromJson(Map<String, dynamic> json) => _$ProjectFromJson(json);
}
