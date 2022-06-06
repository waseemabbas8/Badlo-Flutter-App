import 'package:badlo/presentation/core/base/base_page.dart';
import 'package:badlo/presentation/core/utils/screen_util.dart';
import 'package:badlo/presentation/core/values/colors.dart';
import 'package:badlo/presentation/core/values/dimens.dart';
import 'package:badlo/presentation/page/chat/chat_controller.dart';
import 'package:badlo/presentation/widget/text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatPage extends BasePage<ChatController> {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: Get.mediaQuery.viewPadding.top + 10.toHeight,
            color: colorPrimary,
          ),
          _appbar,
          Container(
            height: 10.toHeight,
            color: colorPrimary,
          ),
          Expanded(child: Container()),
          SizedBox(
            height: 25.toHeight,
            child: Obx(
              () => ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                padding: Margin.h20,
                itemBuilder: indexedWidgetBuilder,
                separatorBuilder: separatorBuilder,
                itemCount: controller.suggestions.length,
              ),
            ),
          ),
          Spacing.v16,
          Padding(
            padding: EdgeInsets.only(left: 20.toWidth),
            child: Row(
              children: [
                Expanded(
                  child: CustomTextField(
                    controller: controller.messageBodyController,
                    prefixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.emoji_emotions_outlined),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.add_circle_outline),
                    ),
                  ),
                ),
                Spacing.h8,
                IconButton(onPressed: controller.onSendButtonPressed, icon: const Icon(Icons.send)),
              ],
            ),
          ),
          Spacing.v16,
        ],
      ),
    );
  }

  Widget get _appbar => Container(
        color: colorPrimary,
        child: Row(
          children: [
            Spacing.h20,
            CircleAvatar(
              radius: 25.toWidth,
              backgroundImage: const NetworkImage('https://via.placeholder.com/150'),
            ),
            Spacing.h16,
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Abid Ali",
                    style: Get.textTheme.headline6!.copyWith(color: Colors.white),
                  ),
                  Spacing.v2,
                  Text(
                    "Online",
                    style: Get.textTheme.bodyText2!.copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert, color: Colors.white)),
            Spacing.h4,
          ],
        ),
      );

  Widget indexedWidgetBuilder(BuildContext context, int index) => InkWell(
        onTap: () => controller.onSuggestedMessageClicked(index),
        borderRadius: BorderRadii.all20,
        child: Container(
          padding: EdgeInsets.fromLTRB(10.toWidth, 3.toHeight, 10.toWidth, 2.toHeight),
          decoration: BoxDecoration(
            borderRadius: BorderRadii.all20,
            color: colorPrimaryLight,
          ),
          child: Text(controller.suggestions[index], style: Get.textTheme.bodyText1),
        ),
      );

  Widget separatorBuilder(BuildContext context, int index) => Spacing.h8;
}
