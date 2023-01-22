import 'package:json_annotation/json_annotation.dart';

import 'market_place.dart';
import 'product_image.dart';
import 'product_owner.dart';

part 'e_product.g.dart';

@JsonSerializable()
class EProduct {
  @JsonKey(name: 'ID')
  final int id;
  @JsonKey(name: 'CategoryId')
  final int categoryId;
  @JsonKey(name: 'ProfileID')
  final int profileID;
  @JsonKey(name: 'ProductName')
  final String name;
  @JsonKey(name: 'Price')
  final double price;
  @JsonKey(name: 'ProdImages')
  final List<ProductImage> images;
  @JsonKey(name: 'Description')
  final String description;
  @JsonKey(name: 'ShortDescription')
  final String shortDescription;
  @JsonKey(name: 'Owner')
  final ProductOwner? owner;
  @JsonKey(name: 'MarketPlace')
  final MarketType market;
  @JsonKey(name: 'Address')
  final String address;
  @JsonKey(name: 'BiddingTimeLimit')
  final String? biddingEndTime;
  @JsonKey(name: 'InspectionStatus')
  final String? inspectionStatus;
  @JsonKey(name: 'IsInspection')
  final bool isInspection;
  @JsonKey(name: 'Latitude')
  final String latitude;
  @JsonKey(name: 'Longitude')
  final String longitude;
  @JsonKey(name: 'PostingDate')
  final String postingDate;
  @JsonKey(name: 'BiddingEndDate')
  final String biddingEndDate;
  @JsonKey(name: 'Status')
  final ReviewStatus status;
  @JsonKey(name: 'ExchangeFor')
  final String? exchangeFor;

  EProduct({
    this.owner,
    this.id = 0,
    this.images = const [],
    this.biddingEndTime,
    this.postingDate = '',
    this.biddingEndDate = '',
    this.status = ReviewStatus.approved,
    this.exchangeFor,
    required this.name,
    required this.price,
    required this.description,
    required this.shortDescription,
    required this.market,
    required this.categoryId,
    required this.profileID,
    required this.address,
    required this.inspectionStatus,
    required this.isInspection,
    required this.latitude,
    required this.longitude,
  });

  factory EProduct.fromJson(Map<String, dynamic> json) => _$EProductFromJson(json);

  Map<String, dynamic> toJson() => _$EProductToJson(this);

  bool get hasExpired => DateTime.now().isAfter(DateTime.parse(biddingEndDate)) && !isPending;

  bool get isActive => status == ReviewStatus.approved && !hasExpired;

  bool get isPending => status == ReviewStatus.pending;

  int get marketIntValue => _$MarketTypeEnumMap[market]!;

  List<String> get exchangeForList => exchangeFor?.split(',') ?? ['Anything'];

  ///Sample data
  static final List<EProduct> products = [
    EProduct(
      name: 'Yamha Ybr',
      price: 250000,
      description:
          'The Yamaha YBR 125 is a light motorcycle made by Yamaha that succeeds its previous model for this segment, the Yamaha SR125.',
      shortDescription:
          'Introduced in 2005, it comes in naked, faired and variants. It has a single-cylinder, air-cooled, four-stroke engine, displacing 124 cc.',
      market: MarketType.swapping,
      categoryId: 1,
      profileID: 1,
      address: 'address',
      inspectionStatus: '1',
      isInspection: true,
      latitude: '34.567854',
      longitude: '-45.45355',
      biddingEndDate: '2022-11-24',
    ),
    EProduct(
      name: 'Navey Force 12',
      price: 5500,
      description: 'Water resistant, 15 days battery, free service for 2 years',
      shortDescription: 'Dual time zone watch by Navy Force.',
      market: MarketType.auction,
      categoryId: 2,
      profileID: 1,
      address: 'address line 2',
      inspectionStatus: '1',
      isInspection: true,
      latitude: '34.567854',
      longitude: '-45.45355',
      biddingEndDate: '2022-11-23',
      status: ReviewStatus.pending,
    ),
    EProduct(
      name: 'Abc',
      price: 6540,
      description: 'Water resistant, 15 days battery, free service for 2 years',
      shortDescription: 'Dual time zone watch by Navy Force.',
      market: MarketType.swapping,
      categoryId: 2,
      profileID: 1,
      address: 'address line 2',
      inspectionStatus: '1',
      isInspection: true,
      latitude: '34.567854',
      longitude: '-45.45355',
      biddingEndDate: '2022-12-30',
    ),
  ];
}

@JsonEnum()
enum ReviewStatus {
  @JsonValue('0')
  pending,
  @JsonValue('1')
  approved,
  @JsonValue('-1')
  rejected,
  @JsonValue('2') //product not swapped yet
  open,
  @JsonValue('3') //product has been swapped
  closed;
}
