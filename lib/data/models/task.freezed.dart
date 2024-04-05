// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Task _$TaskFromJson(Map<String, dynamic> json) {
  return _Task.fromJson(json);
}

/// @nodoc
mixin _$Task {
  String get uid => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_project_uid')
  String get projectUid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'executer_uid')
  String? get executerUid => throw _privateConstructorUsedError;
  @JsonKey(name: 'story_points_uid')
  String? get storyPointsUid => throw _privateConstructorUsedError;
  String? get importance => throw _privateConstructorUsedError;
  String? get step => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskCopyWith<Task> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCopyWith<$Res> {
  factory $TaskCopyWith(Task value, $Res Function(Task) then) =
      _$TaskCopyWithImpl<$Res, Task>;
  @useResult
  $Res call(
      {String uid,
      int number,
      @JsonKey(name: 'parent_project_uid') String projectUid,
      String name,
      String? description,
      DateTime? startDate,
      DateTime? endDate,
      @JsonKey(name: 'executer_uid') String? executerUid,
      @JsonKey(name: 'story_points_uid') String? storyPointsUid,
      String? importance,
      String? step,
      @JsonKey(name: 'created_at') DateTime createdAt,
      String state,
      String category});
}

/// @nodoc
class _$TaskCopyWithImpl<$Res, $Val extends Task>
    implements $TaskCopyWith<$Res> {
  _$TaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? number = null,
    Object? projectUid = null,
    Object? name = null,
    Object? description = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? executerUid = freezed,
    Object? storyPointsUid = freezed,
    Object? importance = freezed,
    Object? step = freezed,
    Object? createdAt = null,
    Object? state = null,
    Object? category = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      projectUid: null == projectUid
          ? _value.projectUid
          : projectUid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      executerUid: freezed == executerUid
          ? _value.executerUid
          : executerUid // ignore: cast_nullable_to_non_nullable
              as String?,
      storyPointsUid: freezed == storyPointsUid
          ? _value.storyPointsUid
          : storyPointsUid // ignore: cast_nullable_to_non_nullable
              as String?,
      importance: freezed == importance
          ? _value.importance
          : importance // ignore: cast_nullable_to_non_nullable
              as String?,
      step: freezed == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskImplCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$$TaskImplCopyWith(
          _$TaskImpl value, $Res Function(_$TaskImpl) then) =
      __$$TaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uid,
      int number,
      @JsonKey(name: 'parent_project_uid') String projectUid,
      String name,
      String? description,
      DateTime? startDate,
      DateTime? endDate,
      @JsonKey(name: 'executer_uid') String? executerUid,
      @JsonKey(name: 'story_points_uid') String? storyPointsUid,
      String? importance,
      String? step,
      @JsonKey(name: 'created_at') DateTime createdAt,
      String state,
      String category});
}

/// @nodoc
class __$$TaskImplCopyWithImpl<$Res>
    extends _$TaskCopyWithImpl<$Res, _$TaskImpl>
    implements _$$TaskImplCopyWith<$Res> {
  __$$TaskImplCopyWithImpl(_$TaskImpl _value, $Res Function(_$TaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? number = null,
    Object? projectUid = null,
    Object? name = null,
    Object? description = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? executerUid = freezed,
    Object? storyPointsUid = freezed,
    Object? importance = freezed,
    Object? step = freezed,
    Object? createdAt = null,
    Object? state = null,
    Object? category = null,
  }) {
    return _then(_$TaskImpl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      projectUid: null == projectUid
          ? _value.projectUid
          : projectUid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      executerUid: freezed == executerUid
          ? _value.executerUid
          : executerUid // ignore: cast_nullable_to_non_nullable
              as String?,
      storyPointsUid: freezed == storyPointsUid
          ? _value.storyPointsUid
          : storyPointsUid // ignore: cast_nullable_to_non_nullable
              as String?,
      importance: freezed == importance
          ? _value.importance
          : importance // ignore: cast_nullable_to_non_nullable
              as String?,
      step: freezed == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskImpl implements _Task {
  const _$TaskImpl(
      {required this.uid,
      required this.number,
      @JsonKey(name: 'parent_project_uid') required this.projectUid,
      required this.name,
      required this.description,
      required this.startDate,
      required this.endDate,
      @JsonKey(name: 'executer_uid') required this.executerUid,
      @JsonKey(name: 'story_points_uid') required this.storyPointsUid,
      required this.importance,
      required this.step,
      @JsonKey(name: 'created_at') required this.createdAt,
      required this.state,
      required this.category});

  factory _$TaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskImplFromJson(json);

  @override
  final String uid;
  @override
  final int number;
  @override
  @JsonKey(name: 'parent_project_uid')
  final String projectUid;
  @override
  final String name;
  @override
  final String? description;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  @JsonKey(name: 'executer_uid')
  final String? executerUid;
  @override
  @JsonKey(name: 'story_points_uid')
  final String? storyPointsUid;
  @override
  final String? importance;
  @override
  final String? step;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  final String state;
  @override
  final String category;

  @override
  String toString() {
    return 'Task(uid: $uid, number: $number, projectUid: $projectUid, name: $name, description: $description, startDate: $startDate, endDate: $endDate, executerUid: $executerUid, storyPointsUid: $storyPointsUid, importance: $importance, step: $step, createdAt: $createdAt, state: $state, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.projectUid, projectUid) ||
                other.projectUid == projectUid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.executerUid, executerUid) ||
                other.executerUid == executerUid) &&
            (identical(other.storyPointsUid, storyPointsUid) ||
                other.storyPointsUid == storyPointsUid) &&
            (identical(other.importance, importance) ||
                other.importance == importance) &&
            (identical(other.step, step) || other.step == step) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      uid,
      number,
      projectUid,
      name,
      description,
      startDate,
      endDate,
      executerUid,
      storyPointsUid,
      importance,
      step,
      createdAt,
      state,
      category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskImplCopyWith<_$TaskImpl> get copyWith =>
      __$$TaskImplCopyWithImpl<_$TaskImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskImplToJson(
      this,
    );
  }
}

abstract class _Task implements Task {
  const factory _Task(
      {required final String uid,
      required final int number,
      @JsonKey(name: 'parent_project_uid') required final String projectUid,
      required final String name,
      required final String? description,
      required final DateTime? startDate,
      required final DateTime? endDate,
      @JsonKey(name: 'executer_uid') required final String? executerUid,
      @JsonKey(name: 'story_points_uid') required final String? storyPointsUid,
      required final String? importance,
      required final String? step,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      required final String state,
      required final String category}) = _$TaskImpl;

  factory _Task.fromJson(Map<String, dynamic> json) = _$TaskImpl.fromJson;

  @override
  String get uid;
  @override
  int get number;
  @override
  @JsonKey(name: 'parent_project_uid')
  String get projectUid;
  @override
  String get name;
  @override
  String? get description;
  @override
  DateTime? get startDate;
  @override
  DateTime? get endDate;
  @override
  @JsonKey(name: 'executer_uid')
  String? get executerUid;
  @override
  @JsonKey(name: 'story_points_uid')
  String? get storyPointsUid;
  @override
  String? get importance;
  @override
  String? get step;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  String get state;
  @override
  String get category;
  @override
  @JsonKey(ignore: true)
  _$$TaskImplCopyWith<_$TaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
