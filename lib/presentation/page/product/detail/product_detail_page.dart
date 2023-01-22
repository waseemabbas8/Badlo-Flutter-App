import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/base/base_page.dart';
import '../../../core/constants.dart';
import '../../../core/utils/CommonWidgets.dart';
import '../../../core/utils/screen_util.dart';
import '../../../core/values/colors.dart';
import '../../../widget/button.dart';
import '../../../core/values/dimens.dart';
import '../../../core/values/strings.dart';
import 'product_detail_controller.dart';

class ProductDetailPage extends BasePage<ProductDetailController> {
  const ProductDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Obx(
                () => ListView(
                  padding: Margin.b50,
              shrinkWrap: true,
              children: [
                imageSlider(),
                Padding(
                  padding: Margin.h16,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Spacing.v16,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            controller.product.name,
                            style: Get.textTheme.headline6,
                          ),
                          Text(
                            'PKR ${controller.product.price}',
                            style: Get.textTheme.headline6!.copyWith(color: colorPrimary),
                          )
                        ],
                      ),
                      Spacing.v16,
                      Text(
                        controller.product.description,
                        style: Get.textTheme.bodyText2!.copyWith(color: colorGrey),
                      ),
                      Spacing.v10,
                      Row(
                        children: [
                          Expanded(
                            child: OutlinedButtonSmall(
                              text: 'Call Now',
                              iconData: Icons.call,
                              onPressed: controller.onCallButtonClick,
                            ),
                          ),
                          Spacing.h16,
                          Expanded(
                            child: OutlinedButtonSmall(
                              text: 'Chat',
                              iconData: Icons.chat,
                              onPressed: controller.onChatButtonClick,
                            ),
                          ),
                        ],
                      ),
                      Spacing.v10,
                      Text(
                        'Exchange For',
                        style: Get.textTheme.subtitle1,
                      ),
                      Wrap(
                        spacing: 6,
                        direction: Axis.horizontal,
                        runAlignment: WrapAlignment.center,
                        children: _exchangeChips(),
                      ),
                      Spacing.v16,
                      Row(
                        children: [
                          const Icon(Icons.location_on_rounded, size: 16),
                          Spacing.h4,
                          Text(
                            controller.product.address,
                            style: Get.textTheme.bodyText2!.copyWith(color: colorGrey),
                          ),
                        ],
                      ),
                      Spacing.v16,
                      profileBar(),
                      Spacing.v20,
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: Margin.v16,
              child: ContainedButton(
                text: labelSwapNow,
                onPressed: controller.onPressedSwapNow,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget profileBar() {
    return Obx(
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
                  'https://toppng.com/uploads/preview/laptop-png-11552846562uiicna8h0i.png',
                  fit: BoxFit.fill,
                  height: 419.toHeight,
                ),
              ),
            ),
            Padding(
              padding: Margin.h8v32,
              child: IconButton(onPressed: controller.onBackPressed, icon: const Icon(Icons.arrow_back)),
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

  List<Widget> _exchangeChips() {
    final List<Widget> widgets = [];
    for(String label in controller.product.exchangeForList) {
      widgets.add(
        Chip(label: Text(label)),
      );
    }
    return widgets;
  }
}
