// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'e_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EProduct _$EProductFromJson(Map<String, dynamic> json) => EProduct(
      owner: json['Owner'] == null
          ? null
          : ProductOwner.fromJson(json['Owner'] as Map<String, dynamic>),
      id: json['ID'] as int? ?? 0,
      images: (json['ProdImages'] as List<dynamic>?)
              ?.map((e) => ProductImage.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      biddingEndTime: json['BiddingTimeLimit'] as String?,
      postingDate: json['PostingDate'] as String? ?? '',
      biddingEndDate: json['BiddingEndDate'] as String? ?? '',
      reviewStatus:
          $enumDecodeNullable(_$ReviewStatusEnumMap, json['ReviewStatus']) ??
              ReviewStatus.approved,
      name: json['ProductName'] as String,
      price: (json['Price'] as num).toDouble(),
      description: json['Description'] as String,
      shortDescription: json['ShortDescription'] as String,
      market: json['MarketPlace'] as int,
      categoryId: json['CategoryId'] as int,
      profileID: json['ProfileID'] as int,
      address: json['Address'] as String,
      inspectionStatus: json['InspectionStatus'] as String,
      isInspection: json['IsInspection'] as bool,
      latitude: json['Latitude'] as String,
      longitude: json['Longitude'] as String,
    );

Map<String, dynamic> _$EProductToJson(EProduct instance) => <String, dynamic>{
      'ID': instance.id,
      'CategoryId': instance.categoryId,
      'ProfileID': instance.profileID,
      'ProductName': instance.name,
      'Price': instance.price,
      'ProdImages': instance.images,
      'Description': instance.description,
      'ShortDescription': instance.shortDescription,
      'Owner': instance.owner,
      'MarketPlace': instance.market,
      'Address': instance.address,
      'BiddingTimeLimit': instance.biddingEndTime,
      'InspectionStatus': instance.inspectionStatus,
      'IsInspection': instance.isInspection,
      'Latitude': instance.latitude,
      'Longitude': instance.longitude,
      'PostingDate': instance.postingDate,
      'BiddingEndDate': instance.biddingEndDate,
      'ReviewStatus': _$ReviewStatusEnumMap[instance.reviewStatus]!,
    };

const _$ReviewStatusEnumMap = {
  ReviewStatus.pending: 1,
  ReviewStatus.approved: 2,
  ReviewStatus.rejected: 3,
};
