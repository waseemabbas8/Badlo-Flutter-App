import 'package:badlo/presentation/core/utils/screen_util.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../domain/entity/e_product.dart';
import '../../../core/base/base_page.dart';
import '../../../core/constants.dart';
import '../../../core/values/colors.dart';
import '../../../core/values/dimens.dart';
import '../../../widget/app_bar_widget.dart';
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
          Spacing.v10,
          Obx(
            () => Wrap(
              spacing: 8,
              direction: Axis.horizontal,
              runAlignment: WrapAlignment.center,
              children: _filterChips(),
            ),
          ),
          Expanded(
            child: Obx(
              () => GridView.builder(
                padding: Margin.all20,
                itemCount: controller.filteredProducts.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: spacing8,
                  mainAxisSpacing: spacing8,
                  childAspectRatio: 2.15 / 3,
                ),
                itemBuilder: _itemAuctionBuilder,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _itemAuctionBuilder(BuildContext context, int index) {
    final ad = controller.filteredProducts[index];
    final chipUiModel = _getAdChipUiModel(ad);
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
              Positioned(
                top: 9.5,
                child: Chip(
                  label: Text(chipUiModel.title),
                  backgroundColor: chipUiModel.color,
                  labelStyle: Get.textTheme.bodySmall!.copyWith(color: Colors.white),
                  avatar: chipUiModel.iconData == null
                      ? null
                      : Icon(chipUiModel.iconData, size: 14, color: Colors.white),
                  labelPadding: const EdgeInsets.fromLTRB(2, -4, 2, -4),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(4), bottomRight: Radius.circular(4)),
                  ),
                ),
              ),
            ],
          ),
          Spacing.v8,
          Padding(
            padding: Margin.l8,
            child: Text(
              ad.name,
              style: Get.textTheme.bodyText2!.copyWith(color: Colors.black, fontSize: 12),
            ),
          ),
          Spacing.v4,
          Padding(
            padding: Margin.l8,
            child: Text(
              'Rs. ${ad.price}',
              style:
                  Get.textTheme.bodyText2!.copyWith(color: colorPrimaryLight, fontSize: 10.toFont),
            ),
          ),
          Spacing.v8,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Row(
              children: [
                const Icon(Icons.star_border_outlined, size: 15, color: colorGrey),
                Spacing.h4,
                Text('3.7', style: Get.textTheme.bodySmall),
                Spacing.h8,
                const Icon(Icons.remove_red_eye, size: 15, color: colorGrey),
                Spacing.h4,
                Text('567', style: Get.textTheme.bodySmall),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _filterChips() {
    final List<Widget> chips = [];
    for (int i = 0; i < controller.filters.length; i++) {
      final filter = controller.filters[i];
      Widget item = FilterChip(
        label: Text(filter.title),
        selected: filter.isSelected,
        onSelected: (bool value) => controller.onFilterSelected(value, i),
      );
      chips.add(item);
    }
    return chips;
  }

  _AdChipUiModel _getAdChipUiModel(EProduct product) {
    if (product.isActive) {
      return _AdChipUiModel(
        product.biddingEndDate,
        Colors.green,
        Icons.access_time_rounded,
      );
    }
    if (product.isPending) {
      return _AdChipUiModel(
        'Pending',
        Colors.orange,
        null,
      );
    }
    return _AdChipUiModel(
      'Expired',
      Colors.red,
      null,
    );
  }
}

class _AdChipUiModel {
  final String title;
  final Color color;
  final IconData? iconData;

  _AdChipUiModel(this.title, this.color, this.iconData);
}
