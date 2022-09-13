import 'package:badlo/data/repository/profile_repository_impl.dart';
import 'package:badlo/data/source/profile_remote_data_source.dart';
import 'package:badlo/data/utils/network/profile_client.dart';
import 'package:badlo/domain/repository/profile_repository.dart';
import 'package:get/get.dart';

import 'product_detail_controller.dart';

class ProductDetailBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileClient.create(Get.find()));
    Get.lazyPut(() => ProfileRemoteDataSource(Get.find()), fenix: true);
    Get.lazyPut<ProfileRepository>(() => ProfileRepositoryImpl(Get.find(), Get.find()));
    Get.lazyPut(() => ProductDetailController(Get.find(), Get.find()));
  }
}
