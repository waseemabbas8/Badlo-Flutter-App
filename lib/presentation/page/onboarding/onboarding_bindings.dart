import 'package:badlo/presentation/page/onboarding/onboarding_controller.dart';
import 'package:get/get.dart';

class OnBoardingBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnBoardingController(Get.find()));
  }
}
