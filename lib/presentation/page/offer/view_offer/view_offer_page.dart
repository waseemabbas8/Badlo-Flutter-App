import 'package:badlo/presentation/core/base/base_page.dart';
import 'package:badlo/presentation/core/constants.dart';
import 'package:badlo/presentation/core/utils/screen_util.dart';
import 'package:badlo/presentation/core/values/colors.dart';
import 'package:badlo/presentation/page/offer/view_offer/view_offer_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/values/dimens.dart';
import '../../../widget/app_bar_widget.dart';

class ViewOfferPage extends BasePage<ViewOfferController> {
  const ViewOfferPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Spacing.statusBarHeight,
          AppbarWidget(
            title: 'View your Offers',
            leading: Icon(Icons.person_outline_outlined, size: 24.toWidth),
            onBackPress: controller.onBackPressed,
          ),
          Spacing.v10,
          Expanded(
            child: ListView.separated(
                padding: Margin.h16v8,
                itemBuilder: _itemBuilder,
                separatorBuilder: _separatorBuilder,
                itemCount: 12),
          ),
        ],
      ),
    );
  }

  Widget _itemBuilder(BuildContext context, int index) => SizedBox(
        height: 96,
        width: Get.width,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(cardRadius),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacing.h16,
              const CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(placeholderImage),
                backgroundColor: Colors.transparent,
              ),
              Spacing.h16,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Furniture",
                      style: Get.textTheme.bodyText1!
                          .copyWith(color: Colors.black),
                    ),
                    Spacing.v2,
                    Text(
                      "Rp 25000",
                      style: Get.textTheme.bodyText2!
                          .copyWith(color: Colors.black),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Icon(Icons.delete_outline, size: 24.toWidth),
                      Spacing.h8,
                      Icon(Icons.remove_red_eye, size: 24.toWidth),
                    ],
                  ),
                  Spacing.v8
                ],
              ),
              Spacing.h16
            ],
          ),
        ),
      );

  Widget _separatorBuilder(BuildContext context, int index) => Spacing.v10;
}
