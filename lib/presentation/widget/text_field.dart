import 'package:badlo/presentation/core/values/colors.dart';
import 'package:badlo/presentation/core/values/dimens.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class _TextField extends StatelessWidget {
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final TextInputAction? textInputAction;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? hint;
  final bool obscureText;
  final bool enabled;

  const _TextField({
    Key? key,
    this.keyboardType,
    this.controller,
    this.validator,
    this.textInputAction,
    this.suffixIcon,
    this.prefixIcon,
    this.hint,
    this.obscureText = false,
    this.enabled = true,
  }) : super(key: key);
}

class LabeledTextField extends _TextField {
  final String label;

  const LabeledTextField({
    Key? key,
    TextInputType? keyboardType,
    TextEditingController? controller,
    FormFieldValidator<String>? validator,
    TextInputAction? textInputAction,
    Widget? suffixIcon,
    Widget? prefixIcon,
    bool obscureText = false,
    String? hint,
    bool enabled = true,
    required this.label,
  }) : super(
          key: key,
          keyboardType: keyboardType,
          controller: controller,
          validator: validator,
          textInputAction: textInputAction,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          hint: hint,
          enabled: enabled,
          obscureText: obscureText,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: Margin.h20,
          child: Text(
            label,
            style: Get.textTheme.subtitle1!.copyWith(color: colorPrimary),
          ),
        ),
        Spacing.v4,
        TextFormField(
          enabled: enabled,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            hintText: hint,
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
          ),
          controller: controller,
          validator: validator,
          style: Get.textTheme.bodyText1,
          obscureText: obscureText,
          textInputAction: textInputAction,
        ),
      ],
    );
  }
}

class CustomTextField extends _TextField {
  const CustomTextField({
    Key? key,
    TextInputType? keyboardType,
    TextEditingController? controller,
    FormFieldValidator<String>? validator,
    TextInputAction? textInputAction,
    Widget? suffixIcon,
    Widget? prefixIcon,
    bool obscureText = false,
    String? hint,
  }) : super(
          key: key,
          keyboardType: keyboardType,
          controller: controller,
          validator: validator,
          textInputAction: textInputAction,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          hint: hint,
          obscureText: obscureText,
        );

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: enabled,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hint,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
      ),
      controller: controller,
      validator: validator,
      style: Get.textTheme.bodyText1,
      obscureText: obscureText,
      textInputAction: textInputAction,
    );
  }
}
