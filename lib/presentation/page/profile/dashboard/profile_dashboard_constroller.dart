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
}
