import 'package:badlo/data/repository/category_repository_impl.dart';
import 'package:badlo/data/source/category_remote_data_source.dart';
import 'package:badlo/data/utils/network/category_client.dart';
import 'package:badlo/domain/repository/category_repository.dart';
import 'package:badlo/presentation/page/product/add/add_product_controller.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AddProductBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ImagePicker());
    Get.lazyPut(() => CategoryClient.create(Get.find()));
    Get.lazyPut(() => CategoryRemoteDataSource(Get.find()));
    Get.lazyPut<CategoryRepository>(() => CategoryRepositoryImpl(Get.find()));
    Get.lazyPut(() => AddProductController(Get.find(), Get.find(), Get.find()));
  }
}
