import 'package:badlo/presentation/core/base/base_controller.dart';
import 'package:badlo/presentation/core/route/routes.dart';
import 'package:get/get.dart';

class OnBoardingController extends BaseController {
  final RxInt _currentIndex = 0.obs;

  int get currentIndex => _currentIndex.value;

  void updateIndexValue(int value) {
    _currentIndex.value = value;
  }

  void onSkipButtonPressed() {
    Get.offAllNamed(Routes.signUp);
  }
}
