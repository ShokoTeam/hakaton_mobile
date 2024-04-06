// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Project _$ProjectFromJson(Map<String, dynamic> json) {
  return _Project.fromJson(json);
}

/// @nodoc
mixin _$Project {
  String get uid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Team get team => throw _privateConstructorUsedError;
  @JsonKey(name: 'consumer_uid')
  String? get consumerUid => throw _privateConstructorUsedError;
  @JsonKey(name: 'inspector_uid')
  String? get inspectorUid => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  int get tasksCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectCopyWith<Project> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectCopyWith<$Res> {
  factory $ProjectCopyWith(Project value, $Res Function(Project) then) =
      _$ProjectCopyWithImpl<$Res, Project>;
  @useResult
  $Res call(
      {String uid,
      String name,
      Team team,
      @JsonKey(name: 'consumer_uid') String? consumerUid,
      @JsonKey(name: 'inspector_uid') String? inspectorUid,
      @JsonKey(name: 'created_at') DateTime createdAt,
      int tasksCount});

  $TeamCopyWith<$Res> get team;
}

/// @nodoc
class _$ProjectCopyWithImpl<$Res, $Val extends Project>
    implements $ProjectCopyWith<$Res> {
  _$ProjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? name = null,
    Object? team = null,
    Object? consumerUid = freezed,
    Object? inspectorUid = freezed,
    Object? createdAt = null,
    Object? tasksCount = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      team: null == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as Team,
      consumerUid: freezed == consumerUid
          ? _value.consumerUid
          : consumerUid // ignore: cast_nullable_to_non_nullable
              as String?,
      inspectorUid: freezed == inspectorUid
          ? _value.inspectorUid
          : inspectorUid // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tasksCount: null == tasksCount
          ? _value.tasksCount
          : tasksCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TeamCopyWith<$Res> get team {
    return $TeamCopyWith<$Res>(_value.team, (value) {
      return _then(_value.copyWith(team: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProjectImplCopyWith<$Res> implements $ProjectCopyWith<$Res> {
  factory _$$ProjectImplCopyWith(
          _$ProjectImpl value, $Res Function(_$ProjectImpl) then) =
      __$$ProjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uid,
      String name,
      Team team,
      @JsonKey(name: 'consumer_uid') String? consumerUid,
      @JsonKey(name: 'inspector_uid') String? inspectorUid,
      @JsonKey(name: 'created_at') DateTime createdAt,
      int tasksCount});

  @override
  $TeamCopyWith<$Res> get team;
}

/// @nodoc
class __$$ProjectImplCopyWithImpl<$Res>
    extends _$ProjectCopyWithImpl<$Res, _$ProjectImpl>
    implements _$$ProjectImplCopyWith<$Res> {
  __$$ProjectImplCopyWithImpl(
      _$ProjectImpl _value, $Res Function(_$ProjectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? name = null,
    Object? team = null,
    Object? consumerUid = freezed,
    Object? inspectorUid = freezed,
    Object? createdAt = null,
    Object? tasksCount = null,
  }) {
    return _then(_$ProjectImpl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      team: null == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as Team,
      consumerUid: freezed == consumerUid
          ? _value.consumerUid
          : consumerUid // ignore: cast_nullable_to_non_nullable
              as String?,
      inspectorUid: freezed == inspectorUid
          ? _value.inspectorUid
          : inspectorUid // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tasksCount: null == tasksCount
          ? _value.tasksCount
          : tasksCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectImpl extends _Project {
  const _$ProjectImpl(
      {required this.uid,
      required this.name,
      required this.team,
      @JsonKey(name: 'consumer_uid') required this.consumerUid,
      @JsonKey(name: 'inspector_uid') required this.inspectorUid,
      @JsonKey(name: 'created_at') required this.createdAt,
      required this.tasksCount})
      : super._();

  factory _$ProjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectImplFromJson(json);

  @override
  final String uid;
  @override
  final String name;
  @override
  final Team team;
  @override
  @JsonKey(name: 'consumer_uid')
  final String? consumerUid;
  @override
  @JsonKey(name: 'inspector_uid')
  final String? inspectorUid;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  final int tasksCount;

  @override
  String toString() {
    return 'Project(uid: $uid, name: $name, team: $team, consumerUid: $consumerUid, inspectorUid: $inspectorUid, createdAt: $createdAt, tasksCount: $tasksCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.team, team) || other.team == team) &&
            (identical(other.consumerUid, consumerUid) ||
                other.consumerUid == consumerUid) &&
            (identical(other.inspectorUid, inspectorUid) ||
                other.inspectorUid == inspectorUid) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.tasksCount, tasksCount) ||
                other.tasksCount == tasksCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uid, name, team, consumerUid,
      inspectorUid, createdAt, tasksCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectImplCopyWith<_$ProjectImpl> get copyWith =>
      __$$ProjectImplCopyWithImpl<_$ProjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectImplToJson(
      this,
    );
  }
}

abstract class _Project extends Project {
  const factory _Project(
      {required final String uid,
      required final String name,
      required final Team team,
      @JsonKey(name: 'consumer_uid') required final String? consumerUid,
      @JsonKey(name: 'inspector_uid') required final String? inspectorUid,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      required final int tasksCount}) = _$ProjectImpl;
  const _Project._() : super._();

  factory _Project.fromJson(Map<String, dynamic> json) = _$ProjectImpl.fromJson;

  @override
  String get uid;
  @override
  String get name;
  @override
  Team get team;
  @override
  @JsonKey(name: 'consumer_uid')
  String? get consumerUid;
  @override
  @JsonKey(name: 'inspector_uid')
  String? get inspectorUid;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  int get tasksCount;
  @override
  @JsonKey(ignore: true)
  _$$ProjectImplCopyWith<_$ProjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
