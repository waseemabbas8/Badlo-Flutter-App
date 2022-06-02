import 'package:badlo/presentation/core/base/base_page.dart';
import 'package:badlo/presentation/core/values/dimens.dart';
import 'package:badlo/presentation/page/offer/place_offer_controller.dart';
import 'package:badlo/presentation/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/values/colors.dart';
import '../../core/values/strings.dart';

class PlaceOfferPage extends BasePage<PlaceOfferController> {
  const PlaceOfferPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Spacing.v40,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    controller.onBackPressed();
                  },
                  icon: const Icon(Icons.arrow_back)),
              Text(
                labelPlaceOffer,
                style: Get.textTheme.button!.copyWith(color: Colors.black),
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.person_outline_sharp)),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: Margin.all20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: Get.width,
                      height: imagePickerHeight,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(cardRadius)),
                        color: colorGrey,
                      ),
                      child: IconButton(onPressed: () {}, icon: const Icon(Icons.add_a_photo)),
                    ),
                    Spacing.v30,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Chip(
                          label: Text(labelPlaceOffer),
                          elevation: cardElevation,
                        ),
                        Spacing.h16,
                        const Chip(
                          label: Text(labelContactOwner),
                          elevation: cardElevation,
                        ),
                      ],
                    ),
                    Spacing.v30,
                    Text(
                      labelItemName,
                      style: Get.textTheme.bodyText1!.copyWith(color: Colors.black),
                    ),
                    Spacing.v12,
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      style: Get.textTheme.bodyText1,
                    ),
                    Spacing.v20,
                    Text(
                      labelDescription,
                      style: Get.textTheme.bodyText1!.copyWith(color: Colors.black),
                    ),
                    Spacing.v12,
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      style: Get.textTheme.bodyText1,
                    ),
                    Spacing.v20,
                    Text(
                      labelCondition,
                      style: Get.textTheme.bodyText1!.copyWith(color: Colors.black),
                    ),
                    Spacing.v12,
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      style: Get.textTheme.bodyText1,
                    ),
                    Spacing.v20,
                    Text(
                      labelItemWorth,
                      style: Get.textTheme.bodyText1!.copyWith(color: Colors.black),
                    ),
                    Spacing.v12,
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      style: Get.textTheme.bodyText1,
                    ),
                    Spacing.v40,
                    Center(child: ContainedButton(text: labelMakeOffer, onPressed: () {})),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
