import 'package:badlo/presentation/core/utils/screen_util.dart';
import 'package:badlo/presentation/widget/circular_icon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../domain/entity/app_notification.dart';
import '../../core/base/base_page.dart';
import '../../core/values/dimens.dart';
import '../../widget/app_bar_widget.dart';
import '../../widget/line_view.dart';
import 'notifications_controller.dart';

class NotificationsPage extends BasePage<NotificationsController> {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Spacing.statusBarHeight,
          const AppbarWidget(title: 'Notifications'),
          Expanded(
            child: Obx(
              () => ListView.separated(
                itemBuilder: _itemBuilder,
                separatorBuilder: _separatorBuilder,
                padding: Margin.all20,
                itemCount: controller.notifications.length,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _itemBuilder(BuildContext context, int index) {
    final notification = controller.notifications[index];
    final Color color;
    final IconData iconData;
    switch (notification.getNotificationType()) {
      case NotificationType.warning:
        color = Colors.orangeAccent;
        iconData = Icons.error;
        break;
      case NotificationType.success:
        color = Colors.green;
        iconData = Icons.check_circle;
        break;
      case NotificationType.info:
        color = Colors.indigo;
        iconData = Icons.info;
        break;
      case NotificationType.error:
        color = Colors.red;
        iconData = Icons.error;
        break;
    }
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
              color: color,
              height: 30.toHeight,
            ),
            Spacing.h8,
            Icon(iconData, color: color, size: 18),
            Spacing.h8,
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(notification.title, style: Get.textTheme.bodyText2),
                Spacing.v4,
                Text(notification.body, style: Get.textTheme.caption),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _separatorBuilder(BuildContext context, int index) => Spacing.v4;
}
