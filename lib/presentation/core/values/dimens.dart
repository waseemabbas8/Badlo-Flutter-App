import 'package:badlo/presentation/core/utils/screen_util.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

const spacing10 = 10.0;
const spacing12 = 12.0;
const spacing8 = 8.0;
const spacing4 = 4.0;
const spacing16 = 16.0;
const spacing20 = 20.0;
const pageMargin = spacing20;

const cardElevation = spacing4;
const cardRadius = spacing16;

const imagePickerHeight = 242.0;

class Margin {
  Margin._();

  static final all8 = CustomEdgeInsets().all(8);
  static final all16 = CustomEdgeInsets().all(16);
  static final all20 = CustomEdgeInsets().all(20);
  static final all40 = CustomEdgeInsets().all(40);
  static final top40 = CustomEdgeInsets().only(top: 40);
  static final b4 = CustomEdgeInsets().only(bottom: 4);
  static final b10 = CustomEdgeInsets().only(bottom: 10);
  static final b20 = CustomEdgeInsets().only(bottom: 20);
  static final l8 = CustomEdgeInsets().only(left: 8);
  static final h8 = CustomEdgeInsets().symmetric(horizontal: 8);
  static final h16 = CustomEdgeInsets().symmetric(horizontal: 16);
  static final h20 = CustomEdgeInsets().symmetric(horizontal: 20);
  static final h16v8 = CustomEdgeInsets().symmetric(horizontal: 16, vertical: 8);
  static final h8v32 = CustomEdgeInsets().symmetric(horizontal: 8, vertical: 32);
  static final h8v16 = CustomEdgeInsets().symmetric(horizontal: 8, vertical: 16);
  static final v16 = CustomEdgeInsets().symmetric(vertical: 16);
}

class BorderRadii {
  BorderRadii._();

  static final all16 = BorderRadius.circular(16);
  static final all20 = BorderRadius.circular(20);
  static final all27 = BorderRadius.circular(27);
}

class Spacing {
  Spacing._();

  static final h4 = SizedBox(width: 4.toWidth);
  static final h8 = SizedBox(width: 8.toWidth);
  static final h16 = SizedBox(width: 16.toWidth);
  static final h20 = SizedBox(width: 20.toWidth);
  static final h30 = SizedBox(width: 30.toWidth);
  static final v2 = SizedBox(height: 2.toHeight);
  static final v4 = SizedBox(height: 4.toHeight);
  static final v8 = SizedBox(height: 8.toHeight);
  static final v10 = SizedBox(height: 10.toHeight);
  static final v12 = SizedBox(height: 12.toHeight);
  static final v16 = SizedBox(height: 16.toHeight);
  static final v20 = SizedBox(height: 20.toHeight);
  static final v30 = SizedBox(height: 30.toHeight);
  static final v40 = SizedBox(height: 40.toHeight);
  static final v50 = SizedBox(height: 50.toHeight);

  static final statusBarHeight = SizedBox(height: Get.mediaQuery.viewPadding.top + 10.toHeight);
}
