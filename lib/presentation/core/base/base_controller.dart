import 'package:get/get.dart';

abstract class BaseController extends GetxController {
  void onBackPressed() {
    Get.back();
  }

  final RxBool _isLoading = false.obs;

  get isLoading => _isLoading.value;

  set isLoading(value) => _isLoading.value = value;
}
