import 'package:badlo/presentation/page/profile/profile_controller.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProfileBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ImagePicker());
    Get.lazyPut(() => ProfileController(Get.find()));
  }
}
