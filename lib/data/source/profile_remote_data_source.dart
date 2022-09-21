import 'dart:io';

import 'package:badlo/data/source/data_source.dart';
import 'package:badlo/data/utils/file_utils.dart';
import 'package:badlo/data/utils/network/profile_client.dart';
import 'package:badlo/domain/entity/user_profile.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

class ProfileRemoteDataSource extends DataSource {
  final ProfileClient _profileClient;

  ProfileRemoteDataSource(this._profileClient);

  Future<HttpResponse<UserProfile?>> add(UserProfile profile, File image) async {
    final List<MultipartFile> multipartImages = [];
    multipartImages.add(await FileUtil.fileToMultipartFile(image, 'image'));
    return _profileClient.add(
      authId: profile.authId,
      name: profile.name,
      nic: profile.nic,
      address: profile.address,
      contactNumber: profile.contactNumber,
      description: profile.description,
      image: multipartImages,
    );
  }

  Future<HttpResponse<UserProfile?>> edit(UserProfile profile, File image) async {
    final List<MultipartFile> multipartImages = [];
    multipartImages.add(await FileUtil.fileToMultipartFile(image, 'image'));
    return _profileClient.edit(
      profileId: profile.id,
      authId: profile.authId,
      name: profile.name,
      nic: profile.nic,
      address: profile.address,
      contactNumber: profile.contactNumber,
      description: profile.description,
      image: multipartImages,
    );
  }

  Future<HttpResponse<UserProfile?>> get(int profileId) => _profileClient.get(profileId);

  Future<HttpResponse<UserProfile?>> getBuyAuthId(int authId) => _profileClient.getByAuthId(authId);

  Future<HttpResponse<List<UserProfile>>> getProfiles() => _profileClient.getProfiles();
}
