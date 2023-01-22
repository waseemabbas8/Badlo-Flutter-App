import 'package:badlo/presentation/core/utils/screen_util.dart';
import 'package:badlo/presentation/core/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class Button extends StatelessWidget {
  final String text;
  final EdgeInsets? margin;
  final double? width;
  final double? height;
  final ButtonStyle? style;
  final VoidCallback onPressed;

  const Button({
    Key? key,
    required this.text,
    this.margin,
    this.width,
    this.height,
    this.style,
    required this.onPressed,
  }) : super(key: key);
}

class ContainedButton extends Button {
  const ContainedButton({
    Key? key,
    required String text,
    EdgeInsets? margin,
    double? width,
    double? height,
    ButtonStyle? style,
    required VoidCallback onPressed,
  }) : super(
          key: key,
          text: text,
          margin: margin,
          width: width,
          height: height,
          style: style,
          onPressed: onPressed,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 45.toHeight,
      margin: margin,
      width: width,
      child: ElevatedButton(
        child: Text(text),
        onPressed: onPressed,
        style: style,
      ),
    );
  }
}

class OutlinedButtonSmall extends Button {
  final IconData? iconData;

  const OutlinedButtonSmall({
    Key? key,
    this.iconData,
    required String text,
    EdgeInsets? margin,
    double? width,
    double? height,
    ButtonStyle? style,
    required VoidCallback onPressed,
  }) : super(
    key: key,
    text: text,
    margin: margin,
    width: width,
    height: height,
    style: style,
    onPressed: onPressed,
  );

  @override
  Widget build(BuildContext context) {
    final textWidget = Text(
      text,
      style: Get.textTheme.button?.copyWith(color: colorPrimary),
    );
    return Container(
      height: height ?? 35.toHeight,
      margin: margin,
      width: width,
      child: iconData == null ?
      OutlinedButton(
        child: textWidget,
        onPressed: onPressed,
        style: style,
      ) :
      OutlinedButton.icon(
        onPressed: onPressed,
        icon: Icon(iconData, size: 18, color: colorPrimary),
        label: textWidget,
      ),
    );
  }
}
