import 'package:badlo/presentation/core/constants.dart';
import 'package:badlo/presentation/core/values/colors.dart';
import 'package:badlo/presentation/core/values/dimens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListHeaderBar extends StatelessWidget {
  final String textTitle;
  final String itemCount;

  const ListHeaderBar(
      {Key? key, required this.textTitle, required this.itemCount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          textTitle,
          style: Get.textTheme.headline6!.copyWith(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 18),
        ),
        Row(
          children: [
            Text(
              itemCount,
              style: Get.textTheme.bodyText2!
                  .copyWith(color: colorPrimary, fontSize: 14),
            ),
            const SizedBox(
              width: spacing8,
            ),
            Image.asset(ImagesPath.greaterSymbol),
          ],
        )
      ],
    );
  }
}
