import 'package:badlo/data/source/data_source.dart';
import 'package:badlo/data/utils/network/auth_client.dart';
import 'package:retrofit/dio.dart';
import '../../domain/entity/user_profile.dart';
import '../utils/response.dart';

class AuthDataSource extends DataSource {
  final AuthClient _authClient;

  AuthDataSource(this._authClient);

  Future<HttpResponse<UserProfile?>> signIn(String email, String password) =>
      _authClient.login(email, password);
}
