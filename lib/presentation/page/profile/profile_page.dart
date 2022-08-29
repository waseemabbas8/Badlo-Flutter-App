import 'package:badlo/presentation/core/constants.dart';
import 'package:badlo/presentation/core/utils/extensions/strings_ext.dart';
import 'package:badlo/presentation/core/values/dimens.dart';
import 'package:badlo/presentation/page/profile/profile_controller.dart';
import 'package:badlo/presentation/widget/app_bar_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';

import '../../core/base/base_page.dart';
import '../../core/values/strings.dart';
import '../../widget/button.dart';
import '../../widget/text_field.dart';

class ProfilePage extends BasePage<ProfileController> {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final profileImage = ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: const FadeInImage(
        width: profileImageSize,
        height: profileImageSize,
        fit: BoxFit.cover,
        image: NetworkImage(placeholderImage),
        placeholder: AssetImage(ImagesPath.facebook),
      ),
    );

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacing.statusBarHeight,
          const AppbarWidget(title: 'Profile'),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Spacing.v30,
                  profileImage,
                  Spacing.v16,
                  _buildForm()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildForm() {
    return Container(
      margin: Margin.h20,
      child: Form(
        key: controller.formKey,
        child: Column(
          children: [
            LabeledTextField(
              label: 'Name',
              hint: 'Enter a Name',
              keyboardType: TextInputType.name,
              controller: controller.nameController,
              textInputAction: TextInputAction.next,
              validator: (input) => input.isValidEmail() ? null : msgEmptyField,
            ),
            Spacing.v16,
            LabeledTextField(
              label: 'NIC',
              hint: 'Enter a NIC',
              keyboardType: TextInputType.number,
              controller: controller.nicController,
              textInputAction: TextInputAction.next,
              validator: (input) => input.isValidEmail() ? null : msgEmptyField,
            ),
            Spacing.v16,
            LabeledTextField(
              label: 'Contact #',
              hint: 'Enter a Contact',
              keyboardType: TextInputType.number,
              controller: controller.contactController,
              textInputAction: TextInputAction.next,
              validator: (input) => input.isValidEmail() ? null : msgEmptyField,
            ),
            Spacing.v16,
            LabeledTextField(
              label: 'Address',
              hint: 'Enter a Address',
              keyboardType: TextInputType.text,
              controller: controller.addressController,
              textInputAction: TextInputAction.next,
              validator: (input) => input.isValidEmail() ? null : msgEmptyField,
            ),
            Spacing.v16,
            LabeledTextField(
              label: 'Description',
              hint: 'Enter a short description',
              keyboardType: TextInputType.name,
              controller: controller.descriptionController,
              textInputAction: TextInputAction.next,
              validator: (input) => input.isValidEmail() ? null : msgEmptyField,
            ),
            Spacing.v30,
            ContainedButton(
              width: 100,
              text: 'Save',
              onPressed: controller.onSaveButtonClick,
            ),
          ],
        ),
      ),
    );
  }
}
