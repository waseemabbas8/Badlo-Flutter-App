import 'package:json_annotation/json_annotation.dart';

part 'user_profile.g.dart';

@JsonSerializable()
class UserProfile {
  @JsonKey(name: 'ID')
  final int id;
  @JsonKey(name: 'AuthId')
  final int authId;
  @JsonKey(name: 'Name')
  final String name;
  @JsonKey(name: 'NIC')
  final String nic;
  @JsonKey(name: 'Address')
  final String address;
  @JsonKey(name: 'Image')
  final String image;
  @JsonKey(name: 'ContactNumber')
  final String contactNumber;
  @JsonKey(name: 'Description')
  final String description;

  factory UserProfile.fromJson(Map<String, dynamic> json) => _$UserProfileFromJson(json);

  UserProfile(this.id, this.authId, this.name, this.nic, this.address, this.image,
      this.contactNumber, this.description);

  Map<String, dynamic> toJson() => _$UserProfileToJson(this);
}
