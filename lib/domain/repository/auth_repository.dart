import 'package:badlo/domain/entity/user_profile.dart';
import '../../data/utils/response.dart';

abstract class AuthRepository {
  Future<GenericResponse<UserProfile?>> signIn(String email, String password);
}
