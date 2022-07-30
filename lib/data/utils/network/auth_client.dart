import 'package:badlo/data/utils/data_constants.dart';
import 'package:badlo/domain/entity/user_profile.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_client.g.dart';

@RestApi(baseUrl: DataConstants.restApiBaseUrl)
abstract class AuthClient {
  static AuthClient create(Dio dio) => AuthClient(dio);

  factory AuthClient(Dio dio, {String baseUrl}) = _AuthClient;

  @POST('Auths/SignIn')
  @FormUrlEncoded()
  Future<HttpResponse<UserProfile?>> login(
    @Field('Email') String email,
    @Field('Password') String password,
  );
}
