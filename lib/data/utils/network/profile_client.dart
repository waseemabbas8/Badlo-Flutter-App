import 'package:badlo/data/utils/data_constants.dart';
import 'package:badlo/domain/entity/user_profile.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'profile_client.g.dart';

@RestApi(baseUrl: DataConstants.restApiBaseUrl)
abstract class ProfileClient {
  static ProfileClient create(Dio dio) => ProfileClient(dio);

  factory ProfileClient(Dio dio, {String baseUrl}) = _ProfileClient;

  static const _apiModule = 'Profile';

  @MultiPart()
  @POST('$_apiModule/Add')
  Future<HttpResponse<UserProfile?>> add({
    @Part(name: 'AuthId') required int authId,
    @Part(name: 'Name') required String name,
    @Part(name: 'NIc') required String nic,
    @Part(name: 'Address') required String address,
    @Part(name: 'ContactNumber') required String contactNumber,
    @Part(name: 'Description') required String description,
    @Part() required List<MultipartFile> image,
  });

  @MultiPart()
  @PUT('$_apiModule/Edit')
  Future<HttpResponse<UserProfile?>> edit({
    @Part(name: 'ID') required int profileId,
    @Part(name: 'AuthId') required int authId,
    @Part(name: 'Name') required String name,
    @Part(name: 'NIc') required String nic,
    @Part(name: 'Address') required String address,
    @Part(name: 'ContactNumber') required String contactNumber,
    @Part(name: 'Description') required String description,
    @Part() required List<MultipartFile> image,
  });

  @GET('$_apiModule/ProfilbyId')
  Future<HttpResponse<UserProfile?>> get(
    @Query('id') int id,
  );

  @GET('$_apiModule/ProfileByAuthId')
  Future<HttpResponse<UserProfile?>> getByAuthId(
    @Query('authId') int authId,
  );

  @GET('$_apiModule/ProfileList')
  Future<HttpResponse<List<UserProfile>>> getProfiles();
}
