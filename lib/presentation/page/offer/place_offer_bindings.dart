import 'package:badlo/presentation/page/offer/place_offer_controller.dart';
import 'package:get/get.dart';

class PlaceOfferBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PlaceOfferController());
  }
}
