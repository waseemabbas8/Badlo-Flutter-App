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

  @POST('$_apiModule/Add')
  Future<HttpResponse<UserProfile?>> add(
    @Body() UserProfile profile,
  );

  @PUT('$_apiModule/Edit')
  Future<HttpResponse<UserProfile?>> edit(
    @Body() UserProfile profile,
  );

  @GET('$_apiModule/ProfilbyId')
  Future<HttpResponse<UserProfile?>> get(
    @Query('id') int id,
  );

  @GET('$_apiModule/ProfileList')
  Future<HttpResponse<List<UserProfile>>> getProfiles();
}
