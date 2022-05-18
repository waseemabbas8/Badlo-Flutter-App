// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'e_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EProduct _$EProductFromJson(Map<String, dynamic> json) => EProduct(
      json['id'] as int,
      json['name'] as String,
      (json['price'] as num).toDouble(),
      json['currency'] as String,
      (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      json['description'] as String,
      ProductOwner.fromJson(json['owner'] as Map<String, dynamic>),
      json['market'] as int,
    );

Map<String, dynamic> _$EProductToJson(EProduct instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'currency': instance.currency,
      'images': instance.images,
      'description': instance.description,
      'owner': instance.owner,
      'market': instance.market,
    };
