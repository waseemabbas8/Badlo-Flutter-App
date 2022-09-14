import 'package:badlo/presentation/core/route/pages.dart';
import 'package:badlo/presentation/core/route/routes.dart';
import 'package:badlo/presentation/core/theme/light_theme.dart';
import 'package:badlo/presentation/core/utils/screen_util.dart';
import 'package:badlo/presentation/page/splash/splash_bindings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  _initDependencies();
  await ScreenUtil.ensureScreenSize();
  await GetStorage.init();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.light,
    statusBarIconBrightness: Brightness.dark, // transparent status bar
  ));
  runApp(const MyApp());
}

_initDependencies() {
  Get.lazyPut(_createDio, fenix: true);
}

Dio _createDio() {
  final dio = Dio();
  dio.options.headers['content-Type'] = 'application/json';
  return dio;
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(allowFontScaling: true);
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      initialRoute: Routes.launch,
      initialBinding: SplashBindings(),
      getPages: AppPages.pages,
      debugShowCheckedModeBanner: false,
    );
  }
}
