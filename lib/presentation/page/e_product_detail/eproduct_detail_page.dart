import 'package:badlo/presentation/core/base/base_page.dart';
import 'package:badlo/presentation/core/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/values/dimens.dart';
import 'eproduct_detail_controller.dart';

class EProductDetailPage extends BasePage<EProductDetailController> {
  const EProductDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          imageSlider(),
          const SizedBox(
            height: spacing16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: spacing16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Leather Sofa',
                  style: Get.textTheme.headline6,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget imageSlider() {
    PageController pageController = PageController();
    final _imageUrls = [placeholderImage, placeholderImage, placeholderImage];
    return SizedBox(
      width: Get.width,
      height: 419,
      child: Obx(
        () => Stack(
          children: [
            PageView(
              scrollDirection: Axis.horizontal,
              controller: pageController,
              onPageChanged: (index) {
                controller.currentSliderIndex.value = index + 1;
              },
              children: List.generate(
                _imageUrls.length,
                (index) => Image.network(
                  _imageUrls[index],
                  fit: BoxFit.fill,
                  height: 419,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: spacing16, vertical: spacing40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(ImagesPath.menu),
                  Image.asset(ImagesPath.bookmark)
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: spacing10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      ImagesPath.chevronLeft,
                      color: Colors.white,
                    ),
                    Text(
                      '${controller.currentSliderIndex.value}',
                      style: Get.textTheme.bodyText2!
                          .copyWith(color: Colors.white, fontSize: 16),
                    ),
                    Image.asset(
                      ImagesPath.chevronRight,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
