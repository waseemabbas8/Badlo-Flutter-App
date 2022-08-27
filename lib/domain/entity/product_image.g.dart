// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductImage _$ProductImageFromJson(Map<String, dynamic> json) => ProductImage(
      json['ImageID'] as int,
      json['ProductId'] as int,
      json['ImageURL'] as String,
    );

Map<String, dynamic> _$ProductImageToJson(ProductImage instance) =>
    <String, dynamic>{
      'ImageID': instance.id,
      'ProductId': instance.productId,
      'ImageURL': instance.url,
    };
