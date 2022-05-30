import 'package:badlo/presentation/core/utils/screen_util.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

class ButtonStyles {
  ButtonStyles._();

  static ButtonStyle get elevatedButtonStyle => ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.toWidth),
        ),
        primary: colorPrimary,
      );
}
