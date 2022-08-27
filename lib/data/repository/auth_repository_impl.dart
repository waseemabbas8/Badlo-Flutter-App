import 'package:badlo/data/source/auth_data_source.dart';
import 'package:badlo/data/source/preference_data_source.dart';
import 'package:badlo/data/utils/response.dart';
import 'package:badlo/domain/entity/user.dart';
import 'package:badlo/domain/repository/auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  final AuthDataSource _authDataSource;
  final PreferenceDataSource _preferenceDataSource;

  AuthRepositoryImpl(this._authDataSource, this._preferenceDataSource);

  @override
  Future<GenericResponse<User?>> signIn(String email, String password) async {
    final response =
        await ResponseHandler.handle<User?>(() => _authDataSource.signIn(email, password));
    if (response.data != null) {
      _preferenceDataSource.saveUser(response.data!);
    }
    return response;
  }

  @override
  User? getUser() => _preferenceDataSource.getUser();
}
