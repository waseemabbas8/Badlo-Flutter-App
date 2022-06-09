import 'package:badlo/presentation/page/offer/view_offer/view_offer_controller.dart';
import 'package:get/get.dart';

class ViewOfferBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ViewOfferController());
  }
}
