import 'package:badlo/presentation/core/base/base_page.dart';
import 'package:badlo/presentation/core/constants.dart';
import 'package:badlo/presentation/core/utils/CommonWidgets.dart';
import 'package:badlo/presentation/core/utils/screen_util.dart';
import 'package:badlo/presentation/core/values/colors.dart';
import 'package:badlo/presentation/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/values/dimens.dart';
import '../../../core/values/strings.dart';
import 'product_detail_controller.dart';

class ProductDetailPage extends BasePage<ProductDetailController> {
  const ProductDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Obx(
          () => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              imageSlider(),
              Spacing.v16,
              Padding(
                padding: Margin.h16,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      controller.product.name,
                      style: Get.textTheme.headline6,
                    ),
                    Text(
                      'Worth PKR ${controller.product.price}',
                      style: Get.textTheme.headline6!.copyWith(color: colorPrimary),
                    )
                  ],
                ),
              ),
              Spacing.v16,
              Padding(
                padding: Margin.h16,
                child: Text(
                  controller.product.description,
                  style: Get.textTheme.bodyText2!.copyWith(color: colorGrey),
                ),
              ),
              Spacing.v16,
              profileBar(),
              Spacing.v20,
              Padding(
                padding: Margin.h16,
                child: const PreferenceWidget(title: 'Preference 1', preference: 'Lorem ipsum'),
              ),
              Spacing.v10,
              Padding(
                padding: Margin.h16,
                child: const PreferenceWidget(title: 'Preference 2', preference: 'Lorem ipsum'),
              ),
              Spacing.v10,
              Padding(
                padding: Margin.h16,
                child: const PreferenceWidget(title: 'Preference 3', preference: 'Lorem ipsum'),
              ),
              Spacing.v40,
              Center(
                child: ContainedButton(
                  text: labelSwapNow,
                  onPressed: controller.onPressedSwapNow,
                ),
              ),
              Spacing.v30,
            ],
          ),
        ),
      ),
    );
  }

  Widget profileBar() {
    return Padding(
      padding: Margin.h16,
      child: Obx(
        () => Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage('https://via.placeholder.com/150'),
                  backgroundColor: Colors.transparent,
                ),
                Spacing.h16,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      controller.productOwnerProfile?.name ?? 'Guest',
                      style: Get.textTheme.headline6!.copyWith(color: Colors.black),
                    ),
                    Spacing.v2,
                    Text(
                      "See Profile",
                      style: Get.textTheme.bodyText2!.copyWith(color: colorPrimaryLight),
                    ),
                  ],
                )
              ],
            ),
            Row(
              children: [
                Image.asset(ImagesPath.star),
                Spacing.h4,
                Text(
                  '4.5/5',
                  style: Get.textTheme.bodyText2!.copyWith(color: colorGreen),
                ),
                Spacing.h8,
                Image.asset(
                  ImagesPath.accessTime,
                  color: colorGreen,
                ),
                Spacing.h4,
                Text(
                  'Lorem',
                  style: Get.textTheme.bodyText2!.copyWith(color: colorGreen),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget imageSlider() {
    PageController pageController = PageController();
    return SizedBox(
      width: Get.width,
      height: 419.toHeight,
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
                controller.product.images.length,
                (index) => Image.network(
                  controller.product.images[index].url,
                  fit: BoxFit.fill,
                  height: 419.toHeight,
                ),
              ),
            ),
            Padding(
              padding: Margin.h8v32,
              child: IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: Margin.b10,
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
                          .copyWith(color: Colors.white, fontSize: 16.toFont),
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
