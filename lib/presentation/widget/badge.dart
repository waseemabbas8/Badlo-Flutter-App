import 'package:badlo/presentation/core/values/dimens.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/values/colors.dart';

abstract class _Badge extends StatelessWidget {
  final String text;
  final Color bgColor;
  const _Badge({Key? key, required this.text, required this.bgColor}) : super(key: key);
}

class CountBadge extends _Badge {
  const CountBadge({super.key, required super.text, super.bgColor = colorPrimary});

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: bgColor,
        ),
        padding: const EdgeInsets.all(5),
        child: Text(text, style: Get.textTheme.caption!.copyWith(color: Colors.white)),
      );
}
