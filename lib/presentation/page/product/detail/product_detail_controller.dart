import 'package:badlo/presentation/core/base/base_controller.dart';
import 'package:badlo/presentation/core/route/routes.dart';
import 'package:get/get.dart';

class ProductDetailController extends BaseController {
  final RxInt currentSliderIndex = 1.obs;

  void updateCurrentSliderIndex(int pos) {
    currentSliderIndex.value = pos;
  }

  void onPressedSwapNow() {
    Get.toNamed(Routes.placeAnOffer);
  }
}
