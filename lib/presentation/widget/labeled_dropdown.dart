import 'package:badlo/presentation/core/values/colors.dart';
import 'package:badlo/presentation/core/values/dimens.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LabeledDropdown<T> extends StatelessWidget {
  final String label;
  final String hint;
  final List<T> items;
  final ValueChanged<T?>? onChange;
  final T? newValue;

  const LabeledDropdown({
    Key? key,
    required this.items,
    required this.label,
    required this.hint,
    this.newValue,
    this.onChange,
  }) : super(key: key);

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
        Container(
          width: Get.width,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(100),
            color: Colors.white,
          ),
          padding: Margin.h16,
          child: DropdownButton(
            value: newValue,
            borderRadius: BorderRadius.circular(20),
            underline: Container(),
            hint: Text(hint),
            items: items
                .map<DropdownMenuItem<T>>((T value) => DropdownMenuItem<T>(
                      value: value,
                      child: Text(value.toString()),
                    ))
                .toList(),
            onChanged: onChange,
          ),
        ),
      ],
    );
  }
}
