import 'package:badlo/presentation/core/base/base_page.dart';
import 'package:badlo/presentation/core/utils/screen_util.dart';
import 'package:badlo/presentation/core/values/dimens.dart';
import 'package:badlo/presentation/page/chat/owner_contact_controller.dart';
import 'package:badlo/presentation/widget/app_bar_widget.dart';
import 'package:badlo/presentation/widget/line_view.dart';
import 'package:badlo/presentation/widget/text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OwnerContactPage extends BasePage<OwnerContactController> {
  const OwnerContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Spacing.statusBarHeight,
          AppbarWidget(
            title: 'Contact Owner',
            leading: Icon(Icons.person_outline_outlined, size: 24.toWidth),
          ),
          Spacing.v30,
          Padding(
            padding: Margin.h20,
            child: Column(
              children: [
                _buildOptionsWidget('Place your offer directly'),
                _buildOptionsWidget('Contact the Owner'),
                Spacing.v30,
                Row(
                  children: [
                    Icon(Icons.message, size: 18.toWidth),
                    Spacing.h16,
                    Text('Chat', style: Get.textTheme.subtitle1),
                  ],
                ),
                Spacing.v16,
                LabeledTextField(
                  label: 'Enter Message',
                  hint: 'Type your message here.',
                  suffixIcon: IconButton(
                    icon: Icon(Icons.send),
                    onPressed: controller.onSendMessageButtonPressed,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildOptionsWidget(String text) => InkWell(
        onTap: () {},
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Spacing.v16,
            Row(
              children: [
                Expanded(
                    child: Text(text,
                        style: Get.textTheme.subtitle1?.copyWith(fontWeight: FontWeight.bold))),
                Icon(Icons.arrow_forward_ios, size: 12.toWidth),
              ],
            ),
            Spacing.v8,
            HorizontalLine(),
          ],
        ),
      );
}
