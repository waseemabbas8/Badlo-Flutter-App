import 'package:get/get.dart';

import 'products_list_controller.dart';

class ProductsListBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductsListController());
  }
}
