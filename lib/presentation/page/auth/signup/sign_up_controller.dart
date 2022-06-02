import 'package:badlo/presentation/core/base/base_controller.dart';
import 'package:badlo/presentation/core/route/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignUpController extends BaseController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void onContinueButtonClick() {
    if (formKey.currentState?.validate() == true) {
      Get.offAllNamed(Routes.home);
    }
  }

  void onFacebookButtonClick() {}

  void onGoogleButtonClick() {}
}
