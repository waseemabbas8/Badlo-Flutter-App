import 'package:badlo/presentation/core/base/base_page.dart';
import 'package:badlo/presentation/core/constants.dart';
import 'package:badlo/presentation/core/utils/screen_util.dart';
import 'package:badlo/presentation/core/values/colors.dart';
import 'package:badlo/presentation/page/auth/signup/sign_up_controller.dart';
import 'package:badlo/presentation/widget/app_bar_widget.dart';
import 'package:badlo/presentation/widget/button.dart';
import 'package:badlo/presentation/widget/text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/values/dimens.dart';
import '../../../core/values/strings.dart';
import 'package:badlo/presentation/core/utils/extensions/strings_ext.dart';

class SignUpPage extends BasePage<SignUpController> {
  SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    initValueListeners();
    return Scaffold(
        body: Obx(
      () => Stack(
        children: [
          controller.isLoading
              ? const Center(
                  child: CircularProgressIndicator(
                    color: colorPrimary,
                  ),
                )
              : Container(),
          Column(
            children: [
              Spacing.statusBarHeight,
              const AppbarWidget(title: 'Create Account'),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    height: Get.height -
                        Get.mediaQuery.viewPadding.top -
                        10.toHeight -
                        50.toHeight,
                    margin: Margin.h20,
                    child: Column(
                      children: [
                        Expanded(
                          child: _loginForm,
                        ),
                        Expanded(
                          child: _buttons,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }

  Widget get _loginForm => Form(
        key: controller.formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            LabeledTextField(
              label: 'Email',
              hint: 'abc@example.com',
              keyboardType: TextInputType.emailAddress,
              controller: controller.emailController,
              textInputAction: TextInputAction.next,
              validator: (input) =>
                  input.isValidEmail() ? null : msgInvalidEmail,
            ),
            Spacing.v40,
            LabeledTextField(
              label: 'Password',
              hint: 'type a password',
              controller: controller.passwordController,
              obscureText: true,
              validator: (input) =>
                  input.isNotNullOrEmpty() ? null : 'Field Cant be empty',
            ),
            Spacing.v4,
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {}, child: Text('Forgot Password?'))
              ],
            )
          ],
        ),
      );

  Widget get _buttons => Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ContainedButton(
              text: 'Continue', onPressed: controller.onContinueButtonClick),
          Spacing.v30,
          Text('or', style: Get.textTheme.bodyText1),
          Spacing.v30,
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              GestureDetector(
                onTap: controller.onFacebookButtonClick,
                child: Image.asset(ImagesPath.facebook,
                    width: 40.toWidth, height: 40.toHeight),
              ),
              Spacing.h30,
              GestureDetector(
                onTap: controller.onGoogleButtonClick,
                child: Image.asset(ImagesPath.google,
                    width: 40.toWidth, height: 40.toHeight),
              ),
            ],
          ),
          Spacing.v30,
        ],
      );

  initValueListeners() {
    controller.responseMessage.listen((value) {
      showMessage("Login Err", value);
    });
  }
}
