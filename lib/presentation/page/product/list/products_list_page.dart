import 'package:badlo/presentation/core/utils/screen_util.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/base/base_page.dart';
import '../../../core/constants.dart';
import '../../../core/values/colors.dart';
import '../../../core/values/dimens.dart';
import '../../../widget/app_bar_widget.dart';
import '../../../widget/rating_bar.dart';
import 'products_list_controller.dart';

class ProductsListPage extends BasePage<ProductsListController> {
  const ProductsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Spacing.statusBarHeight,
          const AppbarWidget(title: 'Your Ads'),
          Expanded(
            child: GridView.builder(
              padding: Margin.all20,
              itemCount: 6,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: spacing8,
                mainAxisSpacing: spacing8,
                childAspectRatio: 2.15 / 3,
              ),
              itemBuilder: _itemAuctionBuilder,
            ),
          ),
        ],
      ),
    );
  }

  Widget _itemAuctionBuilder(BuildContext context, int index) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadii.cardRadius,
                child: Image.network(placeholderImage,
                    width: Get.width, height: 144.toHeight, fit: BoxFit.cover),
              ),
              Padding(
                padding: Margin.all8,
                child: Row(
                  children: [
                    Image.asset(ImagesPath.accessTime),
                    Spacing.h8,
                    Text(
                      "2h 34m left",
                      style: Get.textTheme.bodyText1!
                          .copyWith(fontSize: 10.toFont, color: Colors.black),
                    )
                  ],
                ),
              ),
            ],
          ),
          Spacing.v8,
          Padding(
            padding: Margin.l8,
            child: Text(
              'Vespa',
              style: Get.textTheme.bodyText2!.copyWith(color: Colors.black, fontSize: 12),
            ),
          ),
          Spacing.v4,
          Padding(
            padding: Margin.l8,
            child: Text(
              'Rs. 78,000',
              style:
                  Get.textTheme.bodyText2!.copyWith(color: colorPrimaryLight, fontSize: 10.toFont),
            ),
          ),
          Spacing.v8,
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 4),
            child: Ratingbar(size: 14),
          ),
        ],
      ),
    );
  }
}
