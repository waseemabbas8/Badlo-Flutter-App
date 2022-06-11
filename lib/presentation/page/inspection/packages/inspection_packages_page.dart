import 'package:badlo/presentation/core/base/base_page.dart';
import 'package:badlo/presentation/core/utils/screen_util.dart';
import 'package:badlo/presentation/core/values/strings.dart';
import 'package:badlo/presentation/widget/button.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../core/constants.dart';
import '../../../core/values/dimens.dart';
import '../../../widget/app_bar_widget.dart';
import 'inspection_packages_controller.dart';
import 'package:flutter/material.dart';

class InspectionPackagesPage extends BasePage<InspectionPackagesController> {
  const InspectionPackagesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Spacing.statusBarHeight,
          AppbarWidget(
            title: 'Choose $labelInspections Packages',
            onBackPress: controller.onBackPressed,
          ),
          Spacing.v10,
          Expanded(
            child: ListView.separated(
                padding: Margin.h16v8,
                itemBuilder: _itemBuilder,
                separatorBuilder: _separatorBuilder,
                itemCount: controller.packages.length),
          ),
          ContainedButton(text: labelProcessed, onPressed: () {}),
          Spacing.v16,
          ContainedButton(text: labelSkip, onPressed: () {}),
          Spacing.v30,
        ],
      ),
    );
  }

  Widget _itemBuilder(BuildContext context, int index) => SizedBox(
        width: Get.width,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(cardRadius),
          ),
          child: Padding(
            padding: Margin.h16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacing.v16,
                Text(
                  controller.packages[index].title,
                  style: Get.textTheme.bodyText1,
                ),
                ListView.separated(
                  shrinkWrap: true,
                  padding: Margin.h8v16,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: _itemBuilderOfInspections,
                  separatorBuilder: _separatorBuilderOfInspections,
                  itemCount: controller.packages[index].offers.length,
                ),
                Text(
                  'Rs. 1000',
                  style: Get.textTheme.bodyText1!
                      .copyWith(fontWeight: FontWeight.w700),
                ),
                Spacing.v16,
              ],
            ),
          ),
        ),
      );

  Widget _separatorBuilder(BuildContext context, int index) => Spacing.v10;

  Widget _itemBuilderOfInspections(BuildContext context, int index) =>
      Row(children: [
        const Icon(
          Icons.check,
          size: 16,
        ),
        Spacing.h8,
        Text(
          'Loren',
          style: Get.textTheme.bodyText2,
        ),
      ]);

  Widget _separatorBuilderOfInspections(BuildContext context, int index) =>
      Spacing.v4;
}
