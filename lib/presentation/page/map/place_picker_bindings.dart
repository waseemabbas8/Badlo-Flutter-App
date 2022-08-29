import 'package:badlo/presentation/page/map/place_picker_controller.dart';
import 'package:get/get.dart';

class PlacePickerBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PlacePickerController());
  }
}
