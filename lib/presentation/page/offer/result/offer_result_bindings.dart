import 'package:badlo/presentation/page/offer/result/offer_result_controller.dart';
import 'package:get/get.dart';

class OfferResultBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OfferResultController());
  }
}
