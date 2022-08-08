import 'package:badlo/data/source/auth_data_source.dart';
import 'package:badlo/data/utils/response.dart';
import 'package:badlo/domain/entity/user.dart';
import 'package:badlo/domain/repository/auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  final AuthDataSource _authDataSource;

  AuthRepositoryImpl(this._authDataSource);

  @override
  Future<GenericResponse<User?>> signIn(String email, String password) =>
      ResponseHandler.handle(() => _authDataSource.signIn(email, password));
}
