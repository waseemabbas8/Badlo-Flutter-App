import 'package:get/get.dart';

import 'eproduct_detail_controller.dart';

class EProductDetailBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EProductDetailController());
  }
}
