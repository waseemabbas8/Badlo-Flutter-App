import 'package:badlo/presentation/core/utils/screen_util.dart';
import 'package:flutter/material.dart';

class ContainedButton extends StatelessWidget {
  final String text;
  final EdgeInsets? margin;
  final double? width;
  final double? height;
  final ButtonStyle? style;
  final VoidCallback onPressed;

  const ContainedButton({
    Key? key,
    required this.text,
    this.margin,
    this.width,
    this.height,
    this.style,
    required this.onPressed,
  }) : super(key: key);

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
