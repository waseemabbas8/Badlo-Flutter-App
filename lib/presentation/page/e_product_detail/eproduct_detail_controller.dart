import 'dart:ffi';

import 'package:badlo/presentation/core/base/base_controller.dart';
import 'package:get/get.dart';

class EProductDetailController extends BaseController {
  final RxInt currentSliderIndex = 1.obs;

  void updateCurrentSliderIndex(int pos) {
    currentSliderIndex.value = pos;
  }
}