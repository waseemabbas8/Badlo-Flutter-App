import 'package:badlo/data/utils/data_constants.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
part 'auth_client.g.dart';

@RestApi(baseUrl: DataConstants.restApiBaseUrl)
abstract class AuthClient {
  static AuthClient create(Dio dio) => AuthClient(dio);

  factory AuthClient(Dio dio, {String baseUrl}) = _AuthClient;

  @POST('user/login')
  @FormUrlEncoded()
  Future<HttpResponse<String>> login(
    @Field('email') String email,
    @Field('password') String password,
  );
}
