import 'package:badlo/presentation/core/base/base_page.dart';
import 'package:badlo/presentation/core/constants.dart';
import 'package:badlo/presentation/core/utils/CommonWidgets.dart';
import 'package:badlo/presentation/core/utils/screen_util.dart';
import 'package:badlo/presentation/core/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/values/dimens.dart';
import 'eproduct_detail_controller.dart';

class EProductDetailPage extends BasePage<EProductDetailController> {
  const EProductDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWindowBackground,
      body: SingleChildScrollView(
        child: Column(
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
                    'Leather Sofa',
                    style: Get.textTheme.headline6,
                  ),
                  Text(
                    'Worth PKR 18,000',
                    style: Get.textTheme.headline6!.copyWith(color: colorPrimary),
                  )
                ],
              ),
            ),
            Spacing.v16,
            Padding(
              padding: Margin.h16,
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua',
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
          ],
        ),
      ),
    );
  }

  Widget profileBar() {
    return Padding(
      padding: Margin.h16,
      child: Row(
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
                    "Abid Ali",
                    style: Get.textTheme.headline6!.copyWith(color: Colors.black),
                  ),
                  Spacing.v2,
                  Text(
                    "See Your Profile",
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
    final _imageUrls = [placeholderImage, placeholderImage, placeholderImage];
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
                _imageUrls.length,
                (index) => Image.network(
                  _imageUrls[index],
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
