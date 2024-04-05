// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'task.freezed.dart';
part 'task.g.dart';

@freezed
class Task with _$Task {
  const factory Task({
    required String uid,
    required int number,
    @JsonKey(name: 'parent_project_uid') required String projectUid,
    required String name,
    required String? description,
    required DateTime? startDate,
    required DateTime? endDate,
    @JsonKey(name: 'executer_uid') required String? executerUid,
    @JsonKey(name: 'story_points_uid') required String? storyPointsUid,
    required String? importance,
    required String? step,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    required String state,
    required String category,
  }) = _Task;

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
}
