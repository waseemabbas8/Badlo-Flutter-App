import 'package:json_annotation/json_annotation.dart';

part 'product_owner.g.dart';

@JsonSerializable()
class ProductOwner {
  final String userId;
  final String name;
  final String profileImage;

  ProductOwner(this.userId, this.name, this.profileImage);

  factory ProductOwner.fromJson(Map<String, dynamic> json) =>
      _$ProductOwnerFromJson(json);

  Map<String, dynamic> toJson() => _$ProductOwnerToJson(this);
}
