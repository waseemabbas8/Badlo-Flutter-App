import 'package:badlo/data/source/data_source.dart';
import 'package:badlo/data/utils/network/profile_client.dart';
import 'package:badlo/domain/entity/user_profile.dart';
import 'package:retrofit/retrofit.dart';

class ProfileRemoteDataSource extends DataSource {
  final ProfileClient _profileClient;

  ProfileRemoteDataSource(this._profileClient);

  Future<HttpResponse<UserProfile?>> add(UserProfile profile) => _profileClient.add(profile);

  Future<HttpResponse<UserProfile?>> edit(UserProfile profile) => _profileClient.edit(profile);

  Future<HttpResponse<UserProfile?>> get(int profileId) => _profileClient.get(profileId);

  Future<HttpResponse<UserProfile?>> getBuyAuthId(int authId) => _profileClient.getByAuthId(authId);

  Future<HttpResponse<List<UserProfile>>> getProfiles() => _profileClient.getProfiles();
}
