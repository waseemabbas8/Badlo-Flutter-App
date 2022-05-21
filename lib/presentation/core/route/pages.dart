import 'package:badlo/presentation/core/route/routes.dart';
import 'package:badlo/presentation/page/e_product_detail/eproduct_detail_bindings.dart';
import 'package:badlo/presentation/page/e_product_detail/eproduct_detail_page.dart';
import 'package:badlo/presentation/page/home/home_bindings.dart';
import 'package:badlo/presentation/page/home/home_page.dart';
import 'package:get/get.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.launch,
      page: () => const HomePage(),
      binding: HomeBindings(),
    ),
    GetPage(
      name: Routes.home,
      page: () => const HomePage(),
      binding: HomeBindings(),
    ),
    GetPage(
      name: Routes.eProductDetail,
      page: () => const EProductDetailPage(),
      binding: EProductDetailBindings(),
    )
  ];
}
