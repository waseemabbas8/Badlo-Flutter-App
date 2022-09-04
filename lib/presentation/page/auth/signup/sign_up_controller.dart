import 'package:badlo/domain/repository/auth_repository.dart';
import 'package:badlo/domain/repository/profile_repository.dart';
import 'package:badlo/presentation/core/base/base_controller.dart';
import 'package:badlo/presentation/core/route/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignUpController extends BaseController {
  final AuthRepository _authRepository;
  final ProfileRepository _profileRepository;

  final RxString responseMessage = ''.obs;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  SignUpController(this._authRepository, this._profileRepository);

  void onContinueButtonClick() async {
    if (formKey.currentState?.validate() == true) {
      isLoading = true;
      final response = await _authRepository.signIn(emailController.text, passwordController.text);
      if (response.data != null) {
        await _profileRepository.getByAuthId(response.data!.authId);
        Get.offAllNamed(Routes.home);
      } else {
        responseMessage.value = 'Invalid Email & Password';
      }
      isLoading = false;
    }
  }

  void onFacebookButtonClick() {}

  void onGoogleButtonClick() {}
}
