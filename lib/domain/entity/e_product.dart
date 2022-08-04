import 'package:badlo/domain/entity/product_owner.dart';
import 'package:badlo/domain/utils/constants.dart';
import 'package:json_annotation/json_annotation.dart';

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
  @JsonKey(name: 'Currency')
  final String currency;
  @JsonKey(name: 'ProdImages')
  final List<String> images;
  @JsonKey(name: 'Description')
  final String description;
  @JsonKey(name: 'Owner')
  final ProductOwner owner;
  @JsonKey(name: 'MarketPlace')
  final int market;
  @JsonKey(name: 'Address')
  final String address;
  @JsonKey(name: 'BiddingTimeLimit')
  final String biddingEndTime;
  @JsonKey(name: 'InspectionStatus')
  final String inspectionStatus;
  @JsonKey(name: 'IsInspection')
  final bool isInspection;
  @JsonKey(name: 'Latitude')
  final String latitude;
  @JsonKey(name: 'longitude')
  final String longitude;
  @JsonKey(name: 'PostingDate')
  final String postingDate;

  EProduct(
    this.id,
    this.name,
    this.price,
    this.currency,
    this.images,
    this.description,
    this.owner,
    this.market,
    this.categoryId,
    this.profileID,
    this.address,
    this.biddingEndTime,
    this.inspectionStatus,
    this.isInspection,
    this.latitude,
    this.longitude,
    this.postingDate,
  );

  factory EProduct.fromJson(Map<String, dynamic> json) => _$EProductFromJson(json);

  Map<String, dynamic> toJson() => _$EProductToJson(this);

  MarketType get marketType {
    switch (market) {
      case 1:
        return MarketType.swapping;
      case 2:
        return MarketType.auction;
      case 3:
        return MarketType.donation;
    }
    throw Exception('invalid value for market prop.');
  }
}
