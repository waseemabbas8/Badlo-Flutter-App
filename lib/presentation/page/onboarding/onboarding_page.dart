import 'package:badlo/presentation/core/base/base_page.dart';
import 'package:badlo/presentation/core/route/routes.dart';
import 'package:badlo/presentation/core/values/colors.dart';
import 'package:badlo/presentation/core/values/dimens.dart';
import 'package:badlo/presentation/page/onboarding/onboarding_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'onboarding_content_model.dart';

class OnBoardingPage extends BasePage<OnBoardingController> {
  late PageController _controller;

  @override
  Widget build(BuildContext context) {
    _controller = PageController(initialPage: 0);
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                onTap: () => gotoHome(),
                child: Padding(
                    padding: const EdgeInsets.all(spacing16),
                    child: Text(
                      "Skip",
                      style: Get.textTheme.headline6!
                          .copyWith(color: Colors.black,fontSize: 14.sp),
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
                    padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 2.h),
                    child: Column(
                      children: [
                        SvgPicture.asset(
                          contents[i].image,
                          height: 300,
                        ),
                        Text(
                          contents[i].title,
                          style: Get.textTheme.headline4!
                              .copyWith(color: Colors.black,fontSize: 16.sp),
                        ),
                        const SizedBox(height: spacing16),
                        Text(
                          contents[i].description,
                          textAlign: TextAlign.center,
                          style: Get.textTheme.bodyText1!
                              .copyWith(color: colorGrey, fontSize: 12.sp),
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
                height: 7.0.h,
                margin: const EdgeInsets.all(spacing40),
                width: double.infinity,
                child: ElevatedButton(
                  child: Text(controller.currentIndex == contents.length - 1
                      ? "Get Started"
                      : "Next"),
                  onPressed: () {
                    if (controller.currentIndex == contents.length - 1) {
                      gotoHome();
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

  void gotoHome() {
    Get.offAllNamed(Routes.home);
  }
}
