import 'package:badlo/presentation/core/base/base_controller.dart';
import 'package:badlo/presentation/core/route/routes.dart';
import 'package:get/get.dart';

class PlaceOfferController extends BaseController {
  void onContactButtonPressed() {
    Get.toNamed(Routes.ownerContact);
  }
}
