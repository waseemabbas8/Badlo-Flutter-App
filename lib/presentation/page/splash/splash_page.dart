import 'package:badlo/presentation/core/base/base_page.dart';
import 'package:badlo/presentation/page/splash/splash_controller.dart';
import 'package:flutter/material.dart';

class SplashPage extends BasePage<SplashController> {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.initiate();
    return Scaffold(
      body: Container(),
    );
  }
}
