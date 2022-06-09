import 'package:badlo/presentation/core/base/base_controller.dart';
import 'package:flutter/material.dart';

class OfferResultController extends BaseController {
  IconData get resultIcon => true ? Icons.done : Icons.close;

  Color get iconColor => true ? Colors.green : Colors.red;

  void onVerifyButtonPressed() {}

  void onJaoBadloButtonPressed() {}

  void onMakeNewOfferButtonPressed() {}
}
