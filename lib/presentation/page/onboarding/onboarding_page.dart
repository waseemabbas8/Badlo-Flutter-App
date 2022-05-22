import 'package:badlo/presentation/core/base/base_page.dart';
import 'package:badlo/presentation/core/route/routes.dart';
import 'package:badlo/presentation/core/values/colors.dart';
import 'package:badlo/presentation/core/values/dimens.dart';
import 'package:badlo/presentation/page/onboarding/onboarding_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'onboarding_content_model.dart';

class OnBoardingPage extends BasePage<OnBoardingController> {
  late PageController _controller;

  @override
  Widget build(BuildContext context) {
    _controller = PageController(initialPage: 0);
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                onTap: () => Get.toNamed(Routes.home),
                child: Padding(
                    padding: const EdgeInsets.all(spacing16),
                    child: Text(
                      "Skip",
                      style: Get.textTheme.headline6!
                          .copyWith(color: Colors.black),
                    )),
              ),
            ),
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: contents.length,
                onPageChanged: (int index) {
                  controller.updateIndexValue(index);
                },
                itemBuilder: (_, i) {
                  return Padding(
                    padding: const EdgeInsets.all(40),
                    child: Column(
                      children: [
                        SvgPicture.asset(
                          contents[i].image,
                          height: 300,
                        ),
                        Text(
                          contents[i].title,
                          style: Get.textTheme.headline4!
                              .copyWith(color: Colors.black),
                        ),
                        const SizedBox(height: spacing16),
                        Text(
                          contents[i].description,
                          textAlign: TextAlign.center,
                          style: Get.textTheme.bodyText1!
                              .copyWith(color: colorGrey, fontSize: 18),
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
                    height: 10,
                    width: controller.currentIndex == index ? 25 : 10,
                    margin: const EdgeInsets.only(right: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: colorPrimary,
                    ),
                  ),
                ),
              ),
            ),
            Obx(
              () => Container(
                height: 60,
                margin: const EdgeInsets.all(spacing40),
                width: double.infinity,
                child: ElevatedButton(
                  child: Text(controller.currentIndex == contents.length - 1
                      ? "Get Started"
                      : "Next"),
                  onPressed: () {
                    if (controller.currentIndex == contents.length - 1) {
                      Get.toNamed(Routes.home);
                    }
                    _controller.nextPage(
                      duration: const Duration(milliseconds: 100),
                      curve: Curves.bounceIn,
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(buttonRadius),
                      ),
                      primary: colorPrimary),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
