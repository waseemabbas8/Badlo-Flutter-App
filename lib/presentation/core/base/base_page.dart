import 'package:badlo/presentation/core/base/base_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class BasePage<T extends BaseController> extends GetView<T> {
  const BasePage({Key? key}) : super(key: key);

  void showMessage(String title, msg) {
    Get.snackbar(
      title,
      msg,
      duration: const Duration(seconds: 4),
      animationDuration: const Duration(milliseconds: 800),
      snackPosition: SnackPosition.TOP,
    );
  }
}
