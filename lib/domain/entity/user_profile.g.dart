// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserProfile _$UserProfileFromJson(Map<String, dynamic> json) => UserProfile(
      json['ID'] as int,
      json['AuthId'] as int,
      json['Name'] as String,
      json['NIC'] as String,
      json['Address'] as String,
      json['Image'] as String,
      json['ContactNumber'] as String,
      json['Description'] as String,
    );

Map<String, dynamic> _$UserProfileToJson(UserProfile instance) =>
    <String, dynamic>{
      'ID': instance.id,
      'AuthId': instance.authId,
      'Name': instance.name,
      'NIC': instance.nic,
      'Address': instance.address,
      'Image': instance.image,
      'ContactNumber': instance.contactNumber,
      'Description': instance.description,
    };
