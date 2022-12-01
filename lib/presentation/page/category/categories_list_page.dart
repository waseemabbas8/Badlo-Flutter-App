import 'dart:math';

import 'package:badlo/presentation/core/utils/screen_util.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/base/base_page.dart';
import '../../core/values/dimens.dart';
import '../../widget/app_bar_widget.dart';
import '../../widget/line_view.dart';
import 'categories_list_controller.dart';

class CategoriesListPage extends BasePage<CategoriesListController> {
  const CategoriesListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Spacing.statusBarHeight,
          const AppbarWidget(title: 'Brows Categories'),
          Spacing.v10,
          Expanded(
            child: ListView.separated(
              padding: Margin.all20,
              itemBuilder: _itemBuilder,
              separatorBuilder: _separatorBuilder,
              itemCount: controller.categories.length,
            ),
          ),
        ],
      ),
    );
  }

  Widget _itemBuilder(BuildContext context, int index) {
    final category = controller.categories[index];
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadii.all8,
        color: Colors.white,
      ),
      child: Padding(
        padding: Margin.all10,
        child: Row(
          children: [
            VerticalLine(
              stoke: 2,
              color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
              height: 30.toHeight,
            ),
            Spacing.h16,
            Text(category.name, style: Get.textTheme.bodyMedium),
          ],
        ),
      ),
    );
  }

  Widget _separatorBuilder(BuildContext context, int index) => Spacing.v4;
}
