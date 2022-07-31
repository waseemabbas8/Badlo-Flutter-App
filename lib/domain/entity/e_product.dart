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
  final String name;
  final double price;
  final String currency;
  final List<String> images;
  final String description;
  final ProductOwner owner;
  final int market;

  EProduct(
    this.id,
    this.name,
    this.price,
    this.currency,
    this.images,
    this.description,
    this.owner,
    this.market,
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
