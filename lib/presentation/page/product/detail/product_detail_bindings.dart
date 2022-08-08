import 'package:get/get.dart';

import 'product_detail_controller.dart';

class ProductDetailBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductDetailController());
  }
}
