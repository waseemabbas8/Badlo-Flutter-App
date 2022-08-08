import 'package:badlo/data/source/data_source.dart';
import 'package:badlo/data/utils/network/auth_client.dart';
import 'package:badlo/domain/entity/user.dart';
import 'package:retrofit/dio.dart';

class AuthDataSource extends DataSource {
  final AuthClient _authClient;

  AuthDataSource(this._authClient);

  Future<HttpResponse<User?>> signIn(String email, String password) =>
      _authClient.login(email, password);
}
