// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'e_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EProduct _$EProductFromJson(Map<String, dynamic> json) => EProduct(
      json['ID'] as int,
      json['ProductName'] as String,
      (json['Price'] as num).toDouble(),
      (json['ProdImages'] as List<dynamic>)
          .map((e) => ProductImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['Description'] as String,
      json['Owner'] == null
          ? null
          : ProductOwner.fromJson(json['Owner'] as Map<String, dynamic>),
      json['MarketPlace'] as int,
      json['CategoryId'] as int,
      json['ProfileID'] as int,
      json['Address'] as String,
      json['BiddingTimeLimit'] as String,
      json['InspectionStatus'] as String,
      json['IsInspection'] as bool,
      json['Latitude'] as String,
      json['longitude'] as String,
      json['PostingDate'] as String,
    );

Map<String, dynamic> _$EProductToJson(EProduct instance) => <String, dynamic>{
      'ID': instance.id,
      'CategoryId': instance.categoryId,
      'ProfileID': instance.profileID,
      'ProductName': instance.name,
      'Price': instance.price,
      'ProdImages': instance.images,
      'Description': instance.description,
      'Owner': instance.owner,
      'MarketPlace': instance.market,
      'Address': instance.address,
      'BiddingTimeLimit': instance.biddingEndTime,
      'InspectionStatus': instance.inspectionStatus,
      'IsInspection': instance.isInspection,
      'Latitude': instance.latitude,
      'longitude': instance.longitude,
      'PostingDate': instance.postingDate,
    };
