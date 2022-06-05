import 'package:badlo/presentation/core/utils/screen_util.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

const spacing10 = 10.0;
const spacing12 = 12.0;
const spacing8 = 8.0;
const spacing5 = 5.0;
const spacing4 = 4.0;
const spacing15 = 15.0;
const spacing16 = 16.0;
const spacing20 = 20.0;
const spacing25 = 25.0;
const spacing30 = 30.0;
const spacing35 = 35.0;
const spacing40 = 40.0;
const spacing50 = 50.0;
const pageMargin = spacing20;

const cardElevation = spacing4;
const cardRadius = spacing16;
const buttonRadius = spacing30;

const imagePickerHeight = 242.0;

class Margin {
  Margin._();

  static final all8 = EdgeInsets.all(8.toWidth);
  static final all16 = EdgeInsets.all(16.toWidth);
  static final all20 = EdgeInsets.all(20.toWidth);
  static final all40 = EdgeInsets.all(40.toWidth);
  static final top40 = EdgeInsets.only(top: 40.toHeight);
  static final b4 = EdgeInsets.only(bottom: 4.toHeight);
  static final b10 = EdgeInsets.only(bottom: 10.toHeight);
  static final b20 = EdgeInsets.only(bottom: 20.toHeight);
  static final l8 = EdgeInsets.only(left: 8.toWidth);
  static final h8 = EdgeInsets.symmetric(horizontal: 8.toWidth);
  static final h16 = EdgeInsets.symmetric(horizontal: 16.toWidth);
  static final h20 = EdgeInsets.symmetric(horizontal: 20.toWidth);
  static final h16v8 = EdgeInsets.symmetric(horizontal: 16.toWidth, vertical: 8.toHeight);
  static final h8v32 = EdgeInsets.symmetric(horizontal: 8.toWidth, vertical: 32.toHeight);
  static final v16 = EdgeInsets.symmetric(vertical: 16.toHeight);
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
