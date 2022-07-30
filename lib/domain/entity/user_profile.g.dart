// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserProfile _$UserProfileFromJson(Map<String, dynamic> json) => UserProfile(
      json['AuthId'] as int,
      json['UserName'] as String,
      json['Password'] as String,
      json['CreationDate'] as String,
      json['UpdateDate'] as String,
      json['IsActive'] as bool,
      json['IsLogedin'] as bool,
      json['Email'] as String,
      json['Profiles'],
      json['UserRoles'],
    );

Map<String, dynamic> _$UserProfileToJson(UserProfile instance) =>
    <String, dynamic>{
      'AuthId': instance.authId,
      'Profiles': instance.profiles,
      'UserRoles': instance.userRoles,
      'UserName': instance.userName,
      'Password': instance.password,
      'CreationDate': instance.creationDate,
      'UpdateDate': instance.updateDate,
      'IsActive': instance.isActive,
      'IsLogedin': instance.isLogedin,
      'Email': instance.email,
    };
