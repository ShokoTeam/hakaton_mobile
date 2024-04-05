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
  String get parentTeamUid => throw _privateConstructorUsedError;
  String get consumerUid => throw _privateConstructorUsedError;
  String get inspectorUid => throw _privateConstructorUsedError;

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
      String parentTeamUid,
      String consumerUid,
      String inspectorUid});
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
    Object? parentTeamUid = null,
    Object? consumerUid = null,
    Object? inspectorUid = null,
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
      parentTeamUid: null == parentTeamUid
          ? _value.parentTeamUid
          : parentTeamUid // ignore: cast_nullable_to_non_nullable
              as String,
      consumerUid: null == consumerUid
          ? _value.consumerUid
          : consumerUid // ignore: cast_nullable_to_non_nullable
              as String,
      inspectorUid: null == inspectorUid
          ? _value.inspectorUid
          : inspectorUid // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
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
      String parentTeamUid,
      String consumerUid,
      String inspectorUid});
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
    Object? parentTeamUid = null,
    Object? consumerUid = null,
    Object? inspectorUid = null,
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
      parentTeamUid: null == parentTeamUid
          ? _value.parentTeamUid
          : parentTeamUid // ignore: cast_nullable_to_non_nullable
              as String,
      consumerUid: null == consumerUid
          ? _value.consumerUid
          : consumerUid // ignore: cast_nullable_to_non_nullable
              as String,
      inspectorUid: null == inspectorUid
          ? _value.inspectorUid
          : inspectorUid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectImpl implements _Project {
  const _$ProjectImpl(
      {required this.uid,
      required this.name,
      required this.parentTeamUid,
      required this.consumerUid,
      required this.inspectorUid});

  factory _$ProjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectImplFromJson(json);

  @override
  final String uid;
  @override
  final String name;
  @override
  final String parentTeamUid;
  @override
  final String consumerUid;
  @override
  final String inspectorUid;

  @override
  String toString() {
    return 'Project(uid: $uid, name: $name, parentTeamUid: $parentTeamUid, consumerUid: $consumerUid, inspectorUid: $inspectorUid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.parentTeamUid, parentTeamUid) ||
                other.parentTeamUid == parentTeamUid) &&
            (identical(other.consumerUid, consumerUid) ||
                other.consumerUid == consumerUid) &&
            (identical(other.inspectorUid, inspectorUid) ||
                other.inspectorUid == inspectorUid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, uid, name, parentTeamUid, consumerUid, inspectorUid);

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

abstract class _Project implements Project {
  const factory _Project(
      {required final String uid,
      required final String name,
      required final String parentTeamUid,
      required final String consumerUid,
      required final String inspectorUid}) = _$ProjectImpl;

  factory _Project.fromJson(Map<String, dynamic> json) = _$ProjectImpl.fromJson;

  @override
  String get uid;
  @override
  String get name;
  @override
  String get parentTeamUid;
  @override
  String get consumerUid;
  @override
  String get inspectorUid;
  @override
  @JsonKey(ignore: true)
  _$$ProjectImplCopyWith<_$ProjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
