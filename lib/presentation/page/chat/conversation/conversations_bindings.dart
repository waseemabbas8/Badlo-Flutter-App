import 'package:get/get.dart';

import 'conversations_controller.dart';

class ConversationsBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ConversationsController());
  }
}
