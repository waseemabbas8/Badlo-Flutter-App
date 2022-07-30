import 'package:json_annotation/json_annotation.dart';

part 'user_profile.g.dart';

@JsonSerializable()
class UserProfile {
  @JsonKey(name: 'AuthId')
  final int authId;
  @JsonKey(name: 'Profiles')
  final dynamic profiles;
  @JsonKey(name: 'UserRoles')
  final dynamic userRoles;
  @JsonKey(name: 'UserName')
  final String userName;
  @JsonKey(name: 'Password')
  final String password;
  @JsonKey(name: 'CreationDate')
  final String creationDate;
  @JsonKey(name: 'UpdateDate')
  final String updateDate;
  @JsonKey(name: 'IsActive')
  final bool isActive;
  @JsonKey(name: 'IsLogedin')
  final bool isLogedin;
  @JsonKey(name: 'Email')
  final String email;

  factory UserProfile.fromJson(Map<String, dynamic> json) => _$UserProfileFromJson(json);

  UserProfile(this.authId, this.userName, this.password, this.creationDate, this.updateDate,
      this.isActive, this.isLogedin, this.email, this.profiles, this.userRoles);

  Map<String, dynamic> toJson() => _$UserProfileToJson(this);
}
