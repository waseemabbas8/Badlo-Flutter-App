import 'package:badlo/presentation/core/base/base_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class BasePage<T extends BaseController> extends GetView<T> {
  const BasePage({Key? key}) : super(key: key);
}