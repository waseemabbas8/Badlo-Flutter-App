import 'package:badlo/presentation/core/utils/screen_util.dart';
import 'package:flutter/material.dart';

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

class Margin {
  Margin._();

  static final all16 = EdgeInsets.all(16.toWidth);
  static final all40 = EdgeInsets.all(40.toWidth);
  static final h16 = EdgeInsets.symmetric(horizontal: 16.toWidth);
  static final h16v8 = EdgeInsets.symmetric(horizontal: 16.toWidth, vertical: 8.toHeight);
  static final v16 = EdgeInsets.symmetric(vertical: 16.toHeight);
}

class BorderRadii {
  BorderRadii._();

  static final all20 = BorderRadius.circular(20);
}
