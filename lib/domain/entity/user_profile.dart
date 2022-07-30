import 'package:json_annotation/json_annotation.dart';

part 'user_profile.g.dart';

@JsonSerializable()
class UserProfile {
  final int AuthId;
  final dynamic Profiles;
  final dynamic UserRoles;
  final String UserName;
  final String Password;
  final String CreationDate;
  final String UpdateDate;
  final bool IsActive;
  final bool IsLogedin;
  final String Email;

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);

  UserProfile(this.AuthId, this.UserName, this.Password, this.CreationDate,
      this.UpdateDate, this.IsActive, this.IsLogedin, this.Email, this.Profiles, this.UserRoles);

  Map<String, dynamic> toJson() => _$UserProfileToJson(this);
}
