import 'package:badlo/domain/entity/user.dart';
import '../../data/utils/response.dart';

abstract class AuthRepository {
  Future<GenericResponse<User?>> signIn(String email, String password);
}
