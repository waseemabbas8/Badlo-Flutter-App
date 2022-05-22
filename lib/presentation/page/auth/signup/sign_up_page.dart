import 'package:badlo/presentation/core/base/base_page.dart';
import 'package:badlo/presentation/core/route/routes.dart';
import 'package:badlo/presentation/core/values/colors.dart';
import 'package:badlo/presentation/page/auth/signup/sign_up_controller.dart';
import 'package:badlo/presentation/page/utils/extensions/strings_ext.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_builder.dart';
import 'package:get/get.dart';
import '../../../../data/utils/response.dart';
import '../../../core/values/dimens.dart';
import '../../../core/values/strings.dart';

class SignUpPage extends BasePage<SignUpController> {
  SignUpPage({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: pageMargin),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: spacing50,
                  ),
                  Text(
                    'Email or Phone Number',
                    style:
                        Get.textTheme.bodyText1!.copyWith(color: Colors.black),
                  ),
                  const SizedBox(
                    height: spacing12,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    controller: controller.emailController,
                    validator: (input) =>
                        input.isValidEmail() ? null : msgInvalidEmail,
                    style: Get.textTheme.bodyText1,
                  ),
                  const SizedBox(
                    height: spacing8,
                  ),
                  Text(
                    'Ex: 081234567890',
                    style:
                        Get.textTheme.bodyText2!.copyWith(color: Colors.black),
                  ),
                  const SizedBox(
                    height: spacing30,
                  ),
                  Text(
                    'Password',
                    style:
                        Get.textTheme.bodyText1!.copyWith(color: Colors.black),
                  ),
                  const SizedBox(
                    height: spacing12,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    style: Get.textTheme.bodyText1,
                    obscureText: true,
                    controller: controller.passwordController,
                    validator: (input) =>
                        input.isNotNullOrEmpty() ? null : 'Field Cant be empty',
                  ),
                  const SizedBox(
                    height: spacing40,
                  ),
                  SizedBox(
                    width: Get.width,
                    height: spacing50,
                    child: ElevatedButton(
                      onPressed: () {
                        _onLoginPress();
                      },
                      child: Text("Continue", style: Get.textTheme.bodyText1),
                      style: ElevatedButton.styleFrom(primary: colorGrey),
                    ),
                  ),
                  const SizedBox(
                    height: spacing20,
                  ),
                  Center(
                    child: Text(
                      'Login with Social Account',
                      style: Get.textTheme.bodyText1!
                          .copyWith(color: Colors.black),
                    ),
                  ),
                  const SizedBox(
                    height: spacing20,
                  ),
                  SizedBox(
                    width: Get.width,
                    height: spacing50,
                    child: SignInButtonBuilder(
                      text: 'Login with Facebook',
                      icon: Icons.facebook,
                      onPressed: () {},
                      backgroundColor: colorGrey,
                    ),
                  ),
                  const SizedBox(
                    height: spacing16,
                  ),
                  SizedBox(
                    width: Get.width,
                    height: spacing50,
                    child: SignInButtonBuilder(
                      text: 'Login with Google',
                      icon: Icons.email,
                      onPressed: () {},
                      backgroundColor: colorGrey,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onLoginPress() {
    if (_formKey.currentState?.validate() == true) {
      Get.offAllNamed(Routes.home);
      return;
    }
  }
}
