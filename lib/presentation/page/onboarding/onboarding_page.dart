import 'package:badlo/presentation/core/base/base_page.dart';
import 'package:badlo/presentation/core/utils/screen_util.dart';
import 'package:badlo/presentation/core/values/colors.dart';
import 'package:badlo/presentation/core/values/dimens.dart';
import 'package:badlo/presentation/page/onboarding/onboarding_controller.dart';
import 'package:badlo/presentation/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'onboarding_content_model.dart';

class OnBoardingPage extends BasePage<OnBoardingController> {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                onTap: controller.onSkipButtonPressed,
                child: Padding(
                    padding: Margin.all16,
                    child: Text(
                      "Skip",
                      style: Get.textTheme.headline6!.copyWith(color: Colors.black, fontSize: 14),
                    )),
              ),
            ),
            Expanded(
              child: PageView.builder(
                controller: controller.pageViewController,
                itemCount: contents.length,
                onPageChanged: (int index) {
                  controller.updateIndexValue(index);
                },
                itemBuilder: (_, i) {
                  return Padding(
                    padding: Margin.h16v8,
                    child: Column(
                      children: [
                        SvgPicture.asset(
                          contents[i].image,
                          height: 300.toHeight,
                        ),
                        Text(
                          contents[i].title,
                          style: Get.textTheme.headline6,
                        ),
                        const SizedBox(height: spacing16),
                        Text(
                          contents[i].description,
                          textAlign: TextAlign.center,
                          style: Get.textTheme.bodyText2!.copyWith(
                            color: colorGrey,
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  contents.length,
                  (index) => Container(
                    height: 10.toHeight,
                    width: controller.currentIndex == index ? 25 : 10,
                    margin: const EdgeInsets.only(right: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadii.all20,
                      color: colorPrimary,
                    ),
                  ),
                ),
              ),
            ),
            Obx(
              () => ContainedButton(
                width: double.infinity,
                height: 45.toHeight,
                margin: Margin.all40,
                text: controller.buttonText,
                onPressed: controller.onNextButtonPressed,
              ),
            )
          ],
        ),
      ),
    );
  }
}
