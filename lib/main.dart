import 'package:badlo/presentation/core/route/pages.dart';
import 'package:badlo/presentation/core/route/routes.dart';
import 'package:badlo/presentation/core/theme/light_theme.dart';
import 'package:badlo/presentation/page/home/home_bindings.dart';
import 'package:badlo/presentation/page/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';

void main() {
  _initDependencies();
  runApp(const MyApp());
}

_initDependencies() {
  Get.lazyPut(() => Dio(), fenix: true);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      initialRoute: Routes.home,
      initialBinding: HomeBindings(),
      getPages: AppPages.pages,
    );
  }
}
