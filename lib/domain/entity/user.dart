import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  @JsonKey(name: 'AuthId')
  final int authId;
  @JsonKey(name: 'UserName')
  final String userName;
  @JsonKey(name: 'IsActive')
  final bool isActive;
  @JsonKey(name: 'IsLogedin')
  final bool isLogedin;
  @JsonKey(name: 'Email')
  final String email;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  User(
    this.authId,
    this.userName,
    this.isActive,
    this.isLogedin,
    this.email,
  );

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
