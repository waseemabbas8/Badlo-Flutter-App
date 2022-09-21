import 'package:badlo/data/repository/profile_repository_impl.dart';
import 'package:badlo/data/source/profile_remote_data_source.dart';
import 'package:badlo/data/utils/network/profile_client.dart';
import 'package:badlo/domain/repository/profile_repository.dart';
import 'package:badlo/presentation/page/profile/profile_controller.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProfileBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ImagePicker());
    Get.lazyPut(() => ProfileClient(Get.find()));
    Get.lazyPut(() => ProfileRemoteDataSource(Get.find()));
    Get.lazyPut<ProfileRepository>(() => ProfileRepositoryImpl(Get.find(), Get.find()));
    Get.lazyPut(() => ProfileController(Get.find(), Get.find(), Get.find()));
  }
}
