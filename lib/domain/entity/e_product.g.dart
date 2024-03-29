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
      status: $enumDecodeNullable(_$ReviewStatusEnumMap, json['Status']) ??
          ReviewStatus.approved,
      exchangeFor: json['ExchangeFor'] as String?,
      name: json['ProductName'] as String,
      price: (json['Price'] as num).toDouble(),
      description: json['Description'] as String,
      shortDescription: json['ShortDescription'] as String,
      market: $enumDecode(_$MarketTypeEnumMap, json['MarketPlace']),
      categoryId: json['CategoryId'] as int,
      profileID: json['ProfileID'] as int,
      address: json['Address'] as String,
      inspectionStatus: json['InspectionStatus'] as String?,
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
      'MarketPlace': _$MarketTypeEnumMap[instance.market]!,
      'Address': instance.address,
      'BiddingTimeLimit': instance.biddingEndTime,
      'InspectionStatus': instance.inspectionStatus,
      'IsInspection': instance.isInspection,
      'Latitude': instance.latitude,
      'Longitude': instance.longitude,
      'PostingDate': instance.postingDate,
      'BiddingEndDate': instance.biddingEndDate,
      'Status': _$ReviewStatusEnumMap[instance.status]!,
      'ExchangeFor': instance.exchangeFor,
    };

const _$ReviewStatusEnumMap = {
  ReviewStatus.pending: '0',
  ReviewStatus.approved: '1',
  ReviewStatus.rejected: '-1',
  ReviewStatus.open: '2',
  ReviewStatus.closed: '3',
};

const _$MarketTypeEnumMap = {
  MarketType.swapping: 1,
  MarketType.auction: 2,
  MarketType.donation: 3,
};
