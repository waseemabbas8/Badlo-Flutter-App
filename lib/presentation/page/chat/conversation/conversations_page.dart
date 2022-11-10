import 'package:badlo/presentation/core/utils/screen_util.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/base/base_page.dart';
import '../../../core/values/dimens.dart';
import '../../../widget/app_bar_widget.dart';
import 'conversations_controller.dart';

class ConversationsPage extends BasePage<ConversationsController> {
  const ConversationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Spacing.statusBarHeight,
          const AppbarWidget(title: 'Chat History'),
          Expanded(
            child: Obx(
              () => ListView.separated(
                itemBuilder: _itemBuilder,
                separatorBuilder: _separatorBuilder,
                padding: Margin.all20,
                itemCount: controller.conversations.length,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _itemBuilder(BuildContext context, int index) {
    final conversation = controller.conversations[index];
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadii.all8,
        color: Colors.white,
      ),
      child: Padding(
        padding: Margin.all10,
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(conversation.senderImage),
              radius: 20.toWidth,
            ),
            Spacing.h8,
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    conversation.senderName,
                    style: Get.textTheme.bodyText2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Spacing.v4,
                  Text(
                    conversation.lastMessageBody,
                    style: Get.textTheme.caption,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _separatorBuilder(BuildContext context, int index) => Spacing.v4;
}
