import 'package:badlo/presentation/page/inspection/packages/inspection_packages_controller.dart';
import 'package:get/get.dart';

class InspectionPackagesBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => InspectionPackagesController());
  }
}
