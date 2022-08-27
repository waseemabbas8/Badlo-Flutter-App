import 'package:badlo/domain/entity/role.dart';
import 'package:badlo/domain/entity/user_profile.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  @JsonKey(name: 'AuthId')
  final int authId;
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

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  User(
    this.authId,
    this.userName,
    this.password,
    this.creationDate,
    this.updateDate,
    this.isActive,
    this.isLogedin,
    this.email,
  );

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
