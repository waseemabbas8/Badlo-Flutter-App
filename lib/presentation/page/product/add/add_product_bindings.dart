import 'package:badlo/presentation/page/product/add/add_product_controller.dart';
import 'package:get/get.dart';

class AddProductBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddProductController(Get.find()));
  }
}
