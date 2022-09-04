import 'package:badlo/data/source/preference_data_source.dart';
import 'package:badlo/data/source/profile_remote_data_source.dart';
import 'package:badlo/data/utils/response.dart';
import 'package:badlo/domain/entity/user_profile.dart';
import 'package:badlo/domain/repository/profile_repository.dart';

class ProfileRepositoryImpl extends ProfileRepository {
  final ProfileRemoteDataSource _profileRemoteDataSource;
  final PreferenceDataSource _preferenceDataSource;

  ProfileRepositoryImpl(this._profileRemoteDataSource, this._preferenceDataSource);

  @override
  Future<GenericResponse<UserProfile?>> add(UserProfile profile) =>
      ResponseHandler.handle(() => _profileRemoteDataSource.add(profile));

  @override
  Future<GenericResponse<UserProfile?>> edit(UserProfile profile) =>
      ResponseHandler.handle(() => _profileRemoteDataSource.edit(profile));

  @override
  Future<GenericResponse<UserProfile?>> get(int profileId) async =>
      ResponseHandler.handle(() => _profileRemoteDataSource.get(profileId));

  @override
  Future<GenericResponse<UserProfile?>> getByAuthId(int authId) async {
    final GenericResponse<UserProfile?> response =
        await ResponseHandler.handle(() => _profileRemoteDataSource.getBuyAuthId(authId));
    if (response.data != null) {
      _preferenceDataSource.saveProfile(response.data!);
    }
    return response;
  }

  @override
  Future<GenericResponse<List<UserProfile>>> getProfiles() =>
      ResponseHandler.handle(() => _profileRemoteDataSource.getProfiles());
}
