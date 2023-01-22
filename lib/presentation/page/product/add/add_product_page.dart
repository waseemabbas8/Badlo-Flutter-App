import 'package:badlo/domain/entity/category.dart';
import 'package:badlo/domain/entity/market_place.dart';
import 'package:badlo/domain/utils/constants.dart';
import 'package:badlo/presentation/core/base/base_page.dart';
import 'package:badlo/presentation/core/utils/screen_util.dart';
import 'package:badlo/presentation/core/values/colors.dart';
import 'package:badlo/presentation/core/values/dimens.dart';
import 'package:badlo/presentation/core/values/strings.dart';
import 'package:badlo/presentation/page/product/add/add_product_controller.dart';
import 'package:badlo/presentation/widget/app_bar_widget.dart';
import 'package:badlo/presentation/widget/button.dart';
import 'package:badlo/presentation/widget/labeled_dropdown.dart';
import 'package:badlo/presentation/widget/text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:badlo/presentation/core/utils/extensions/strings_ext.dart';

class AddProductPage extends BasePage<AddProductController> {
  const AddProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Spacing.statusBarHeight,
          const AppbarWidget(
            title: 'Add Product',
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                Spacing.v16,
                SizedBox(
                  height: 80.toWidth,
                  child: Obx(
                    () => ListView.separated(
                      itemBuilder: _imageItemBuilder,
                      separatorBuilder: _horizontalSeparatorBuilder,
                      itemCount: controller.images.length,
                      scrollDirection: Axis.horizontal,
                      padding: Margin.h20,
                    ),
                  ),
                ),
                Spacing.v16,
                _buildForm(),
              ],
            ),
          )),
        ],
      ),
    );
  }

  Widget _imageItemBuilder(BuildContext context, int index) {
    final imageFile = controller.images[index];
    return InkWell(
      onTap: controller.onImagePick,
      child: Container(
        width: 80.toWidth,
        decoration: BoxDecoration(
          border: Border.all(color: colorPrimaryLight),
          borderRadius: BorderRadius.all(Radius.circular(8.toWidth)),
          color: colorWindowBackground.withOpacity(0.5),
        ),
        child: imageFile.path.isEmpty
            ? const Icon(
                Icons.add,
                size: 60,
                color: colorPrimaryLight,
              )
            : Image.file(imageFile),
      ),
    );
  }

  Widget _horizontalSeparatorBuilder(BuildContext context, int index) => Spacing.h8;

  Widget _buildForm() {
    return Container(
      margin: Margin.h20,
      child: Form(
        key: controller.formKey,
        child: Column(
          children: [
            LabeledTextField(
              label: 'Product Name',
              hint: 'enter product name e.g: iPhone 13',
              keyboardType: TextInputType.name,
              controller: controller.nameController,
              textInputAction: TextInputAction.next,
              validator: (input) => input.isNotNullOrEmpty() ? null : msgEmptyField,
            ),
            Spacing.v16,
            LabeledTextField(
              label: 'Short Description',
              hint: 'Write a short description',
              keyboardType: TextInputType.name,
              controller: controller.shortDescriptionController,
              textInputAction: TextInputAction.next,
              validator: (input) => input.isNotNullOrEmpty() ? null : msgEmptyField,
            ),
            Spacing.v16,
            LabeledTextField(
              label: 'Description',
              hint: 'Enter product description',
              keyboardType: TextInputType.name,
              controller: controller.descriptionController,
              textInputAction: TextInputAction.next,
              validator: (input) => input.isNotNullOrEmpty() ? null : msgEmptyField,
            ),
            Spacing.v16,
            Obx(
              () => LabeledDropdown<Category>(
                newValue: controller.selectedCategory,
                label: 'Category',
                hint: 'Select a category',
                items: controller.categories,
                onChange: controller.onCategoryChanged,
              ),
            ),
            Spacing.v16,
            Obx(
              () => LabeledDropdown<MarketType>(
                newValue: controller.selectedMarketType,
                label: 'Market Place',
                hint: 'Select market place',
                items: MarketType.values,
                onChange: controller.onMarketTypeChanged,
              ),
            ),
            Spacing.v16,
            LabeledTextField(
              label: 'Price',
              hint: 'Enter product price',
              keyboardType: TextInputType.number,
              controller: controller.priceTextController,
              textInputAction: TextInputAction.next,
              validator: (input) => input.isNotNullOrEmpty() ? null : msgEmptyField,
            ),
            Spacing.v16,
            GestureDetector(
              ///TODO add onTap: controller.onAddressSelect,
              child: LabeledTextField(
                label: 'Address',
                hint: 'Enter address',

                ///TODO remove add enabled: false,
                keyboardType: TextInputType.name,
                controller: controller.addressTextController,
                textInputAction: TextInputAction.next,
                validator: (input) => input.isNotNullOrEmpty() ? null : msgEmptyField,
              ),
            ),
            Spacing.v16,
            GestureDetector(
              onTap: controller.onDateSelect,
              child: LabeledTextField(
                label: 'Biding End Date',
                hint: 'Select biding ending date',
                enabled: false,
                keyboardType: TextInputType.datetime,
                controller: controller.bidingDateTextController,
                textInputAction: TextInputAction.next,
                validator: (input) => input.isNotNullOrEmpty() ? null : msgEmptyField,
              ),
            ),
            Spacing.v20,
            ContainedButton(text: 'Continue', onPressed: controller.onContinueButtonClick),
          ],
        ),
      ),
    );
  }
}
