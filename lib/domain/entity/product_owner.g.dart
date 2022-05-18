// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_owner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductOwner _$ProductOwnerFromJson(Map<String, dynamic> json) => ProductOwner(
      json['userId'] as String,
      json['name'] as String,
      json['profileImage'] as String,
    );

Map<String, dynamic> _$ProductOwnerToJson(ProductOwner instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'name': instance.name,
      'profileImage': instance.profileImage,
    };
