import 'package:badlo/presentation/core/constants.dart';
import 'package:badlo/presentation/core/utils/CommonWidgets.dart';
import 'package:badlo/presentation/core/utils/screen_util.dart';
import 'package:badlo/presentation/core/values/colors.dart';
import 'package:badlo/presentation/core/values/dimens.dart';
import 'package:badlo/presentation/core/values/strings.dart';
import 'package:badlo/presentation/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/base/base_page.dart';
import 'home_controller.dart';

class HomePage extends BasePage<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topMenuBar = Padding(
      padding: const EdgeInsets.symmetric(horizontal: pageMargin, vertical: spacing16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(ImagesPath.menu),
          Row(
            children: [
              Image.asset(ImagesPath.place),
              Spacing.h4,
              Text(
                'Karachi',
                style: Get.textTheme.bodyText2!.copyWith(color: Colors.black),
              ),
              Spacing.h16,
              GestureDetector(
                onTap: controller.onProfileClick,
                child: const Icon(
                  Icons.account_circle_outlined,
                  color: colorPrimary,
                ),
              ),
            ],
          )
        ],
      ),
    );

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                topMenuBar,
                Expanded(
                    child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      getSearchBarUI(),
                      Spacing.v16,
                      Padding(
                        padding: Margin.h20,
                        child: ListHeaderBar(
                          textTitle: 'Brows Categories',
                          itemCount: 'View All',
                          onViewAllTap: controller.onBrowsCategories,
                        ),
                      ),
                      Spacing.v10,
                      SizedBox(
                        width: Get.width,
                        height: 50.toHeight,
                        child: Obx(
                          () => ListView.separated(
                            shrinkWrap: true,
                            padding: Margin.h16,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: _itemCategoryBuilder,
                            separatorBuilder: separatorBuilder,
                            itemCount: controller.categories.length,
                          ),
                        ),
                      ),
                      Spacing.v16,
                      Padding(
                        padding: Margin.h20,
                        child: Obx(
                          () => ListHeaderBar(
                            textTitle: 'Swapping Marketplace',
                            itemCount: '${controller.swappingProducts.length} ads',
                          ),
                        ),
                      ),
                      Spacing.v10,
                      SizedBox(
                        width: Get.width,
                        height: 228.toHeight,
                        child: Obx(
                          () => ListView.separated(
                            shrinkWrap: true,
                            padding: Margin.h16,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: itemSwappingBuilder,
                            separatorBuilder: separatorBuilder,
                            itemCount: controller.swappingProducts.length,
                          ),
                        ),
                      ),
                      Spacing.v16,
                      Padding(
                        padding: Margin.h20,
                        child: const ListHeaderBar(
                            textTitle: 'Auction Marketplace', itemCount: '12 items'),
                      ),
                      Spacing.v10,
                      SizedBox(
                        width: Get.width,
                        height: 228.toHeight,
                        child: ListView.separated(
                          shrinkWrap: true,
                          padding: Margin.h16,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: itemAuctionBuilder,
                          separatorBuilder: separatorBuilder,
                          itemCount: 5,
                        ),
                      ),
                      Spacing.v16,
                      Padding(
                        padding: Margin.h20,
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadii.all16,
                              child: Image.network(placeholderImage,
                                  width: Get.width, height: 184.toHeight, fit: BoxFit.cover),
                            ),
                            Padding(
                              padding: Margin.all16,
                              child: Text(
                                "Donate Now",
                                style: Get.textTheme.headline6!
                                    .copyWith(color: Colors.black, fontSize: 18.toFont),
                              ),
                            )
                          ],
                        ),
                      ),
                      Spacing.v16,
                    ],
                  ),
                )),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: Margin.b20,
                  child:
                      ContainedButton(text: labelPostAnAdd, onPressed: controller.onPostAddClick)),
            ),
          ],
        ),
      ),
    );
  }

  Widget itemAuctionBuilder(BuildContext context, int index) {
    return SizedBox(
      width: 158.toWidth,
      child: Padding(
        padding: const EdgeInsets.only(bottom: spacing4),
        child: Card(
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
                  'Current Bid: Rs. 78,000',
                  style: Get.textTheme.bodyText2!
                      .copyWith(color: colorPrimaryLight, fontSize: 10.toFont),
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Spacing.h8,
                    Image.asset(
                      ImagesPath.bid,
                      height: 14.toWidth,
                      width: 14.toWidth,
                      color: colorGreen,
                    ),
                    Spacing.h4,
                    Text(
                      'Bid Now',
                      style: Get.textTheme.bodyText2!
                          .copyWith(color: colorPrimary, fontSize: 10.toFont),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _itemCategoryBuilder(BuildContext context, int index) {
    final category = controller.categories[index];
    return GestureDetector(
      child: Chip(
        label: Text(category.name),
      ),
      onTap: controller.onCategoryItemClick,
    );
  }

  Widget itemSwappingBuilder(BuildContext context, int index) {
    final product = controller.swappingProducts[index];
    return GestureDetector(
      onTap: () => controller.onProductItemClick(product),
      child: SizedBox(
        width: 158.toWidth,
        child: Padding(
          padding: Margin.b4,
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(cardRadius),
                  child: Image.network(placeholderImage,
                      width: Get.width, height: 144.toHeight, fit: BoxFit.cover),
                ),
                Spacing.v8,
                Padding(
                  padding: Margin.l8,
                  child: Text(
                    product.name,
                    style: Get.textTheme.bodyText2!.copyWith(color: Colors.black, fontSize: 12),
                  ),
                ),
                Spacing.v4,
                Padding(
                  padding: Margin.l8,
                  child: Text(
                    'Worth PKR ${product.price}',
                    style:
                        Get.textTheme.bodyText2!.copyWith(color: colorPrimaryLight, fontSize: 10),
                  ),
                ),
                Spacing.v4,
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Spacing.h8,
                    Image.asset(
                      ImagesPath.place,
                      height: 14.toWidth,
                      width: 14.toWidth,
                      color: colorGreen,
                    ),
                    Spacing.h4,
                    Text(
                      '1.9 km away',
                      style: Get.textTheme.bodyText2!.copyWith(color: colorGreen, fontSize: 10),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: spacing10),
                          child: Image.asset(
                            ImagesPath.swapNow,
                            width: 14,
                            height: 14,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget separatorBuilder(BuildContext context, int index) => Spacing.h8;

  Widget getSearchBarUI() {
    return Padding(
      padding: Margin.h20,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                right: 8,
              ),
              child: SizedBox(
                height: 40,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadii.cardRadius,
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          offset: const Offset(0, 2),
                          blurRadius: 8.0),
                    ],
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: spacing10, right: spacing10, top: 0, bottom: 5),
                    child: TextField(
                      onChanged: (String txt) {},
                      style: const TextStyle(
                        fontSize: 13,
                      ),
                      cursorColor: Colors.blue,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search',
                          prefixIcon: Padding(
                              padding: const EdgeInsets.only(top: spacing8),
                              child: Icon(Icons.search))),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Spacing.h16,
          Image.asset(ImagesPath.tune),
        ],
      ),
    );
  }
}
