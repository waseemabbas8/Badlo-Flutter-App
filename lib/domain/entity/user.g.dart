// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      json['AuthId'] as int,
      json['UserName'] as String,
      json['Password'] as String,
      json['CreationDate'] as String,
      json['UpdateDate'] as String,
      json['IsActive'] as bool,
      json['IsLogedin'] as bool,
      json['Email'] as String,
      (json['Profiles'] as List<dynamic>)
          .map((e) => UserProfile.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['UserRoles'] as List<dynamic>)
          .map((e) => Role.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
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
