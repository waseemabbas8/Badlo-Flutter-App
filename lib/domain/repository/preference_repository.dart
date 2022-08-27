import 'package:badlo/domain/entity/user.dart';
import 'package:badlo/domain/entity/user_profile.dart';

abstract class PreferenceRepository {
  User? getUser();
  void saveUser(User user);
  void deleteUser();
  UserProfile? getProfile();
  void saveProfile(UserProfile userProfile);
  void deleteProfile();
  bool hasVisitedOnboarding();
  void setOnboardingVisited();
}