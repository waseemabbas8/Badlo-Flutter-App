import 'package:badlo/presentation/core/constants.dart';
import 'package:badlo/presentation/core/route/routes.dart';
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
      padding: const EdgeInsets.symmetric(
          horizontal: pageMargin, vertical: spacing16),
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
              )
            ],
          )
        ],
      ),
    );

    return Scaffold(
      backgroundColor: colorWindowBackground,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                topMenuBar,
                // const SizedBox(height: spacing8,),
                Expanded(
                    child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      getSearchBarUI(),
                      Padding(
                        padding: Margin.all20,
                        child: const ListHeaderBar(
                            textTitle: 'Swapping Marketplace',
                            itemCount: '17 ads'),
                      ),
                      SizedBox(
                        width: Get.width,
                        height: 185.toHeight,
                        child: ListView.separated(
                            shrinkWrap: true,
                            padding: Margin.h16,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: itemSwappingBuilder,
                            separatorBuilder: separatorBuilder,
                            itemCount: 5),
                      ),
                      Padding(
                        padding: Margin.all20,
                        child: const ListHeaderBar(
                            textTitle: 'Auction Marketplace',
                            itemCount: '12 items'),
                      ),
                      SizedBox(
                        width: Get.width,
                        height: 227.toHeight,
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
                                  width: Get.width,
                                  height: 184.toHeight,
                                  fit: BoxFit.cover),
                            ),
                            Padding(
                              padding: Margin.all16,
                              child: Text(
                                "Donate Now",
                                style: Get.textTheme.headline6!.copyWith(
                                    color: Colors.black, fontSize: 18.toFont),
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
                      ContainedButton(text: labelPostAnAdd, onPressed: () {})),
            ),
          ],
        ),
      ),
    );
  }

  Widget itemAuctionBuilder(BuildContext context, int index) {
    return SizedBox(
      width: 158.toWidth,
      height: 237.toHeight,
      child: Padding(
        padding: const EdgeInsets.only(bottom: spacing4),
        child: Card(
          elevation: cardElevation,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadii.all16,
          ),
          child: Padding(
            padding: Margin.all8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadii.all16,
                      child: Image.network(placeholderImage,
                          width: Get.width,
                          height: 144.toHeight,
                          fit: BoxFit.cover),
                    ),
                    Padding(
                      padding: Margin.all8,
                      child: Row(
                        children: [
                          Image.asset(ImagesPath.accessTime),
                          Spacing.h8,
                          Text(
                            "2h 34m left",
                            style: Get.textTheme.bodyText1!.copyWith(
                                fontSize: 10.toFont, color: Colors.black),
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
                    style: Get.textTheme.bodyText2!
                        .copyWith(color: Colors.black, fontSize: 12),
                  ),
                ),
                Spacing.v4,
                Padding(
                  padding: Margin.l8,
                  child: Text(
                    'Current Bid: Rs. 78,000',
                    style: Get.textTheme.bodyText2!.copyWith(
                        color: colorPrimaryLight, fontSize: 10.toFont),
                  ),
                ),
                Spacing.v4,
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
      ),
    );
  }

  Widget itemSwappingBuilder(BuildContext context, int index) {
    return GestureDetector(
      onTap: _onTap,
      child: SizedBox(
        width: 179.toWidth,
        height: 195.toHeight,
        child: Padding(
          padding: Margin.b4,
          child: Card(
            elevation: cardElevation,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadii.all16,
            ),
            child: Padding(
              padding: Margin.all8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(cardRadius),
                    child: Image.network(placeholderImage,
                        width: Get.width, height: 102, fit: BoxFit.cover),
                  ),
                  Spacing.v8,
                  Padding(
                    padding: Margin.l8,
                    child: Text(
                      'Leather Sofa',
                      style: Get.textTheme.bodyText2!
                          .copyWith(color: Colors.black, fontSize: 12),
                    ),
                  ),
                  Spacing.v4,
                  Padding(
                    padding: Margin.l8,
                    child: Text(
                      'Worth PKR 18,000',
                      style: Get.textTheme.bodyText2!
                          .copyWith(color: colorPrimaryLight, fontSize: 10),
                    ),
                  ),
                  Spacing.v4,
                  Expanded(
                    child: Row(
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
                          style: Get.textTheme.bodyText2!
                              .copyWith(color: colorGreen, fontSize: 10),
                        ),
                        Expanded(
                            child: Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                    padding:
                                        const EdgeInsets.only(right: spacing4),
                                    child: Image.asset(ImagesPath.swapNow))))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onTap() {
    Get.toNamed(Routes.eProductDetail);
  }

  Widget separatorBuilder(BuildContext context, int index) => const SizedBox(
        width: spacing8,
      );

  Widget getSearchBarUI() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: pageMargin),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                right: 8,
              ),
              child: SizedBox(
                height: 43,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(38.0),
                    ),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          offset: const Offset(0, 2),
                          blurRadius: 8.0),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: spacing10, right: spacing10, top: 0, bottom: 5),
                    child: TextField(
                      onChanged: (String txt) {},
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                      cursorColor: Colors.blue,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search',
                          prefixIcon: Padding(
                              padding: const EdgeInsets.only(top: spacing8),
                              child: Image.asset(ImagesPath.search))),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: spacing16,
          ),
          Image.asset(ImagesPath.tune),
        ],
      ),
    );
  }
}
