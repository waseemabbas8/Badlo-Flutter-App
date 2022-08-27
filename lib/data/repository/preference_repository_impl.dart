import 'package:badlo/data/source/preference_data_source.dart';
import 'package:badlo/domain/entity/user.dart';
import 'package:badlo/domain/entity/user_profile.dart';
import 'package:badlo/domain/repository/preference_repository.dart';

class PreferenceRepositoryImpl extends PreferenceRepository {
  final PreferenceDataSource _preferenceDataSource;

  PreferenceRepositoryImpl(this._preferenceDataSource);

  @override
  void deleteProfile() {
    _preferenceDataSource.deleteProfile();
  }

  @override
  void deleteUser() {
    _preferenceDataSource.deleteUser();
  }

  @override
  UserProfile? getProfile() => _preferenceDataSource.getProfile();

  @override
  User? getUser() => _preferenceDataSource.getUser();

  @override
  bool hasVisitedOnboarding() => _preferenceDataSource.hasVisitedOnboarding();

  @override
  void saveProfile(UserProfile userProfile) {
    _preferenceDataSource.saveProfile(userProfile);
  }

  @override
  void saveUser(User user) {
    _preferenceDataSource.saveUser(user);
  }

  @override
  void setOnboardingVisited() {
    _preferenceDataSource.setOnboardingVisited();
  }
}
