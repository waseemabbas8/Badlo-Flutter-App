import 'package:badlo/domain/entity/e_product.dart';
import 'package:badlo/presentation/core/base/base_controller.dart';
import 'package:badlo/presentation/core/route/routes.dart';
import 'package:get/get.dart';

class ProductDetailController extends BaseController {
  final RxInt currentSliderIndex = 1.obs;

  late EProduct product;

  @override
  void onInit() {
    product = Get.arguments[0];
    super.onInit();
  }

  void updateCurrentSliderIndex(int pos) {
    currentSliderIndex.value = pos;
  }

  void onPressedSwapNow() {
    Get.toNamed(Routes.placeAnOffer);
  }
}
