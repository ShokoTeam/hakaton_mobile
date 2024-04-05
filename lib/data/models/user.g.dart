// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      uid: json['uid'] as String,
      name: json['name'] as String,
      lastname: json['lastname'] as String,
      email: json['email'] as String,
      teamUid: json['team_uid'] as String?,
      position: json['position'] as String,
      isBusiness: json['isBusiness'] as bool,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'lastname': instance.lastname,
      'email': instance.email,
      'team_uid': instance.teamUid,
      'position': instance.position,
      'isBusiness': instance.isBusiness,
    };
