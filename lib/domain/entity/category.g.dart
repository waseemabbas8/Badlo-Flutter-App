// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Category _$CategoryFromJson(Map<String, dynamic> json) => Category(
      json['CategoryId'] as int,
      json['Name'] as String,
      json['Date'] as String,
      json['IsActive'] as bool,
    );

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'CategoryId': instance.id,
      'Name': instance.name,
      'Date': instance.date,
      'IsActive': instance.isActive,
    };
