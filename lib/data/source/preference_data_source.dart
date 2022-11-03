import 'package:badlo/data/source/data_source.dart';
import 'package:badlo/domain/entity/user.dart';
import 'package:badlo/domain/entity/user_profile.dart';
import 'package:get_storage/get_storage.dart';

class PreferenceDataSource extends DataSource {
  final GetStorage _getStorage;

  PreferenceDataSource(this._getStorage);

  static const _keyUser = 'badlo_user';
  static const _keyProfile = 'badlo_user_profile';
  static const _keyOnboarding = 'badlo_onboarding';

  void saveUser(User user) {
    _getStorage.write(_keyUser, user.toJson());
  }

  void deleteUser() {
    _getStorage.remove(_keyUser);
  }

  User? getUser() {
    final json = _getStorage.read(_keyUser);
    if (json == null) return null;
    return User.fromJson(json);
  }

  void saveProfile(UserProfile userProfile) {
    _getStorage.write(_keyProfile, userProfile.toJson());
  }

  void deleteProfile() {
    _getStorage.remove(_keyProfile);
  }

  UserProfile? getProfile() {
    final json = _getStorage.read(_keyProfile);
    if (json == null) return null;
    return UserProfile.fromJson(json);
  }

  void setOnboardingVisited() {
    _getStorage.write(_keyOnboarding, true);
  }

  bool hasVisitedOnboarding() => _getStorage.read<bool>(_keyOnboarding) == true;
}
