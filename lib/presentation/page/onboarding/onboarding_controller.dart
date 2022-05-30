import 'package:badlo/presentation/core/base/base_controller.dart';
import 'package:badlo/presentation/core/route/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'onboarding_content_model.dart';

class OnBoardingController extends BaseController {
  late PageController pageViewController;

  final RxInt _currentIndex = 0.obs;

  int get currentIndex => _currentIndex.value;

  @override
  void onInit() {
    super.onInit();
    pageViewController = PageController(initialPage: 0);
  }

  void updateIndexValue(int value) {
    _currentIndex.value = value;
  }

  String get buttonText => currentIndex == contents.length - 1 ? "Get Started" : "Next";

  void onSkipButtonPressed() {
    Get.offAllNamed(Routes.signUp);
  }

  void onNextButtonPressed() {
    if (currentIndex == contents.length - 1) {
      onSkipButtonPressed();
      return;
    }
    pageViewController.nextPage(
      duration: const Duration(milliseconds: 100),
      curve: Curves.bounceIn,
    );
  }
}
