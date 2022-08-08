import 'package:badlo/data/utils/response.dart';
import 'package:badlo/domain/entity/user_profile.dart';

abstract class ProfileRepository {
  Future<GenericResponse<UserProfile?>> add(UserProfile profile);
  Future<GenericResponse<UserProfile?>> edit(UserProfile profile);
  Future<GenericResponse<UserProfile?>> get(int profileId);
  Future<GenericResponse<UserProfile?>> getByAuthId(int authId);
  Future<GenericResponse<List<UserProfile>>> getProfiles();
}
