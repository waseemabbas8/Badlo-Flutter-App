import 'package:badlo/presentation/page/home/home_controller.dart';
import 'package:get/get.dart';

import '../../../domain/entity/category.dart';
import '../../core/base/base_controller.dart';

class CategoriesListController extends BaseController {
  final List<Category> categories = [];

  @override
  void onInit() {
    categories.addAll(Get.find<HomeController>().categories);
    super.onInit();
  }
}
