import 'package:badlo/presentation/core/route/pages.dart';
import 'package:badlo/presentation/core/route/routes.dart';
import 'package:badlo/presentation/core/theme/light_theme.dart';
import 'package:badlo/presentation/core/utils/screen_util.dart';
import 'package:badlo/presentation/core/values/colors.dart';
import 'package:badlo/presentation/page/onboarding/onboarding_bindings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';

void main() {
  _initDependencies();
  runApp(const MyApp());
}

_initDependencies() {
  Get.lazyPut(() => Dio(), fenix: true);
  ScreenUtil.init(allowFontScaling: true);

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.light,
    statusBarIconBrightness: Brightness.dark, // transparent status bar
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      initialRoute: Routes.onBoarding,
      initialBinding: OnBoardingBindings(),
      getPages: AppPages.pages,
      debugShowCheckedModeBanner: false,
    );
  }
}
