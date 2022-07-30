import 'package:badlo/data/repository/product_repository_impl.dart';
import 'package:badlo/data/source/product_remote_date_source.dart';
import 'package:badlo/data/utils/network/product_client.dart';
import 'package:badlo/domain/repository/product_repository.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductClient.create(Get.find()), fenix: true);
    Get.lazyPut(() => ProductRemoteDataSource(Get.find()), fenix: true);
    Get.lazyPut<ProductRepository>(
      () => ProductRepositoryImpl(Get.find()),
      fenix: true,
    );
    Get.lazyPut(() => HomeController(Get.find()));
  }
}
