import 'package:badlo/presentation/core/base/base_page.dart';
import 'package:badlo/presentation/core/utils/screen_util.dart';
import 'package:badlo/presentation/core/values/colors.dart';
import 'package:badlo/presentation/core/values/dimens.dart';
import 'package:badlo/presentation/page/profile/dashboard/profile_dashboard_constroller.dart';
import 'package:badlo/presentation/widget/app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileDashboardPage extends BasePage<ProfileDashboardController> {
  const ProfileDashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Spacing.statusBarHeight,
          AppbarWidget(
            title: '',
            leading: InkWell(
              onTap: controller.onEditClick,
              child: const Icon(Icons.edit),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: Margin.h20,
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 30.0,
                        backgroundImage: NetworkImage(
                            'https://cdn.dribbble.com/users/2364329/screenshots/5930135/aa.jpg'),
                        backgroundColor: Colors.transparent,
                      ),
                      Spacing.h16,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'controller.profile.name',
                            style: Get.textTheme.headline6!.copyWith(color: Colors.black),
                          ),
                          Spacing.v2,
                          Text(
                            controller.user.userName,
                            style: Get.textTheme.bodyText2!.copyWith(color: colorPrimaryLight),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Spacing.v16,
                _line,
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('\$149.00', style: Get.textTheme.subtitle2),
                          Spacing.v4,
                          Text(
                            'Wallet',
                            style: Get.textTheme.bodyText2?.copyWith(
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                    _lineVertical,
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('\$149.00', style: Get.textTheme.subtitle2),
                          Spacing.v4,
                          Text(
                            'Wallet',
                            style: Get.textTheme.bodyText2?.copyWith(
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                _line,
                Spacing.v16,
                Spacing.v16,
                _optionWidget(controller.onProductsOptionClick, Icons.dashboard, 'Your Products'),
                _optionWidget(controller.onOrdersOptionClick, Icons.shopping_cart, 'Your Orders'),
                _optionWidget(
                  controller.onNotificationsOptionClick,
                  Icons.notifications_active_outlined,
                  'Notifications',
                ),
                _optionWidget(controller.onOrdersOptionClick, Icons.chat, 'Chats'),
                _optionWidget(controller.onProductsOptionClick, Icons.settings, 'Settings'),
                _optionWidget(
                    controller.onProductsOptionClick, Icons.support_agent_outlined, 'Support'),
                _line,
                InkWell(
                  onTap: controller.onLogoutClick,
                  child: Padding(
                    padding: Margin.v16h20,
                    child: Row(
                      children: [
                        Icon(Icons.power_settings_new, size: 20.toWidth, color: Colors.red),
                        Spacing.h16,
                        Text(
                          'Logout',
                          style: Get.textTheme.bodyText1?.copyWith(
                            color: Colors.red,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget get _line => Container(
        width: Get.width,
        height: 1.toHeight,
        color: Colors.black12,
      );

  Widget get _lineVertical => Container(
        width: 1.toWidth,
        height: 50.toHeight,
        color: Colors.black12,
      );

  Widget _optionWidget(VoidCallback onTap, IconData iconData, title) => InkWell(
        onTap: onTap,
        child: Padding(
          padding: Margin.v16h20,
          child: Row(
            children: [
              Icon(iconData, size: 20.toWidth, color: Colors.blueGrey),
              Spacing.h16,
              Text(
                title,
                style: Get.textTheme.bodyText1?.copyWith(color: Colors.blueGrey),
              ),
            ],
          ),
        ),
      );
}
