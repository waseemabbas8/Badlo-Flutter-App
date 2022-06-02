import 'package:get/get.dart';

abstract class BaseController extends GetxController {
  void onBackPressed() {
    Get.back();
  }
}
