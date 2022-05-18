import 'package:badlo/data/repository/swapping_repository_impl.dart';
import 'package:badlo/data/source/swapping_remote_data_source.dart';
import 'package:badlo/data/utils/network/swapping_client.dart';
import 'package:badlo/domain/repository/swapping_repository.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SwappingClient.create(Get.find()), fenix: true);
    Get.lazyPut(() => SwappingRemoteDataSource(Get.find()), fenix: true);
    Get.lazyPut<SwappingRepository>(() => SwappingRepositoryImpl(Get.find()),
        fenix: true);
    Get.lazyPut(() => HomeController(Get.find()));
  }
}
