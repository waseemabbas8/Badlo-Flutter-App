import 'package:badlo/presentation/page/item_detail/item_detail_controller.dart';
import 'package:get/get.dart';

class ItemDetailBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ItemDetailController());
  }
}
