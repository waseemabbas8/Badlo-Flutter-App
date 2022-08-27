import 'package:json_annotation/json_annotation.dart';

part 'product_image.g.dart';

@JsonSerializable()
class ProductImage {
  @JsonKey(name: 'ImageID')
  final int id;
  @JsonKey(name: 'ProductId')
  final int productId;
  @JsonKey(name: 'ImageURL')
  final String url;

  ProductImage(this.id, this.productId, this.url);

  factory ProductImage.fromJson(Map<String, dynamic> json) => _$ProductImageFromJson(json);

  Map<String, dynamic> toJson() => _$ProductImageToJson(this);
}
