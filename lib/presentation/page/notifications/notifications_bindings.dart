import 'package:get/get.dart';

import 'notifications_controller.dart';

class NotificationsBindings extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => NotificationsController());
  }
}
