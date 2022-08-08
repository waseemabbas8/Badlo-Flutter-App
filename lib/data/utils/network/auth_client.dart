import 'package:badlo/data/utils/data_constants.dart';
import 'package:badlo/domain/entity/user.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_client.g.dart';

@RestApi(baseUrl: DataConstants.restApiBaseUrl)
abstract class AuthClient {
  static AuthClient create(Dio dio) => AuthClient(dio);

  factory AuthClient(Dio dio, {String baseUrl}) = _AuthClient;

  static const _apiModule = 'Auths';

  @POST('$_apiModule/SignIn')
  Future<HttpResponse<User?>> login(
    @Query('Email') String email,
    @Query('Password') String password,
  );
}
