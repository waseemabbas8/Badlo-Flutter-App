import 'package:badlo/domain/repository/preference_repository.dart';
import 'package:badlo/presentation/core/base/base_controller.dart';
import 'package:badlo/presentation/core/route/routes.dart';
import 'package:get/get.dart';

class SplashController extends BaseController {
  final PreferenceRepository _preferenceRepository;

  SplashController(this._preferenceRepository);

  @override
  void onReady() {
    super.onReady();
    if (_preferenceRepository.hasVisitedOnboarding()) {
      if (_isUserLogin) {
        Get.offNamed(Routes.home);
      } else {
        Get.offNamed(Routes.signUp);
      }
      return;
    }
    Get.offNamed(Routes.onBoarding);
  }

  bool get _isUserLogin => _preferenceRepository.getUser() != null;

  void initiate() {}
}
