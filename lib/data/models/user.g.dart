// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      uid: json['uid'] as String,
      name: json['name'] as String,
      lastName: json['lastName'] as String,
      teamUid: json['teamUid'] as String,
      position: json['position'] as String,
      isBusiness: json['isBusiness'] as bool,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'lastName': instance.lastName,
      'teamUid': instance.teamUid,
      'position': instance.position,
      'isBusiness': instance.isBusiness,
    };
