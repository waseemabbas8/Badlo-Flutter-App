import 'package:badlo/presentation/core/values/colors.dart';
import 'package:badlo/presentation/core/values/dimens.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppbarWidget extends StatelessWidget {
  final VoidCallback? onBackPress;
  final String title;
  final Widget? leading;
  const AppbarWidget({Key? key, this.onBackPress, this.leading, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Margin.h20,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: onBackPress,
            child: Icon(
              Icons.arrow_back,
              color: colorAppBarTitle,
            ),
          ),
          Spacing.h16,
          Expanded(
            child: Text(
              title,
              style: Get.textTheme.headline6?.copyWith(color: colorAppBarTitle),
              textAlign: TextAlign.center,
            ),
          ),
          Spacing.h16,
          leading ?? Container(),
        ],
      ),
    );
  }
}
