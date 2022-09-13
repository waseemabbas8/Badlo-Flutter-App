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
          AppbarWidget(
            title: 'Profile',
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
                      Icon(Icons.phone, color: Colors.blueGrey, size: 16.toWidth),
                      Spacing.h16,
                      Text(
                        '(92)-303-1888898',
                        style: Get.textTheme.bodyText2?.copyWith(color: Colors.blueGrey),
                      )
                    ],
                  ),
                ),
                Spacing.v16,
                Padding(
                  padding: Margin.h20,
                  child: Row(
                    children: [
                      Icon(Icons.email_outlined, color: Colors.blueGrey, size: 16.toWidth),
                      Spacing.h16,
                      Text(
                        'engr.waseemabbas8@gmail.com',
                        style: Get.textTheme.bodyText2?.copyWith(color: Colors.blueGrey),
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
                _optionWidget(() {}, Icons.favorite_border, 'Your Favorites'),
                _optionWidget(() {}, Icons.supervisor_account, 'Tell your friends'),
                _optionWidget(() {}, Icons.settings, 'Settings'),
                _line,
                InkWell(
                  onTap: () {},
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
              Icon(iconData, size: 20.toWidth, color: Colors.blue),
              Spacing.h16,
              Text(
                title,
                style: Get.textTheme.bodyText1?.copyWith(color: colorPrimaryLight),
              ),
            ],
          ),
        ),
      );
}
