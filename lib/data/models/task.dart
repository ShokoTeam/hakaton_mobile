import 'package:freezed_annotation/freezed_annotation.dart';

part 'task.freezed.dart';
part 'task.g.dart';

@freezed
class Task with _$Task {
  const factory Task({
    required String uid,
    required int number,
    required String projectUid,
    required String name,
    required String description,
    required DateTime startDate,
    required DateTime endDate,
    required String executerUid,
    required int storyPoints,
    required int difficulty,
  }) = _Task;

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
}
