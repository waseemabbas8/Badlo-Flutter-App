import 'package:badlo/presentation/core/values/colors.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class _Line extends StatelessWidget {
  final double? stoke;
  final Color? color;

  const _Line({Key? key, this.stoke, this.color}) : super(key: key);
}

class HorizontalLine extends _Line {
  final double? width;

  const HorizontalLine({
    Key? key,
    this.width,
    double? stoke = 1,
    Color? color = colorGrey,
  }) : super(key: key, stoke: stoke, color: color);

  @override
  Widget build(BuildContext context) => Container(
        color: color,
        width: width ?? Get.width,
        height: stoke,
      );
}

class VerticalLine extends _Line {
  final double? height;

  const VerticalLine({
    Key? key,
    this.height,
    double? stoke = 1,
    Color? color = colorGrey,
  }) : super(key: key, stoke: stoke, color: color);

  @override
  Widget build(BuildContext context) => Container(
        color: color,
        width: stoke,
        height: height ?? Get.height,
      );
}
