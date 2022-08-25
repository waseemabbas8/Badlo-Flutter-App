import 'package:json_annotation/json_annotation.dart';

part 'category.g.dart';

@JsonSerializable()
class Category {
  @JsonKey(name: "CategoryId")
  final int id;
  @JsonKey(name: "Name")
  final String name;
  @JsonKey(name: "Date")
  final String date;
  @JsonKey(name: "IsActive")
  final String isActive;

  Category(this.id, this.name, this.date, this.isActive);

  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}
