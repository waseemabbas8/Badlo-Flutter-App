import 'package:get/get.dart';

import 'categories_list_controller.dart';

class CategoriesListBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CategoriesListController());
  }
}
