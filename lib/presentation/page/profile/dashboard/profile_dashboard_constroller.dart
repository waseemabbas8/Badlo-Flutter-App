import 'package:badlo/domain/entity/user.dart';
import 'package:badlo/domain/entity/user_profile.dart';
import 'package:badlo/domain/repository/preference_repository.dart';
import 'package:badlo/presentation/core/base/base_controller.dart';
import 'package:badlo/presentation/core/route/routes.dart';
import 'package:get/get.dart';

class ProfileDashboardController extends BaseController {
  final PreferenceRepository _preferenceRepository;

  ProfileDashboardController(this._preferenceRepository);

  late User user;
  late UserProfile profile;

  @override
  void onInit() {
    user = _preferenceRepository.getUser()!;
    // profile = _preferenceRepository.getProfile()!;
    super.onInit();
  }

  void onEditClick() {
    Get.toNamed(Routes.profile);
  }

  void onProductsOptionClick() {
    Get.toNamed(Routes.productsList);
  }

  void onOrdersOptionClick() {
    ///TODO navigate to orders list screen
  }

  void onLogoutClick() {
    _preferenceRepository.deleteUser();
    _preferenceRepository.deleteProfile();
    Get.offAllNamed(Routes.signUp);
  }
}
