import 'package:badlo/data/utils/network/chat_client.dart';
import 'package:get/get.dart';

import '../../../../data/repository/chat_repository_impl.dart';
import '../../../../data/source/chat_remote_data_source.dart';
import '../../../../domain/repository/chat_repository.dart';
import 'conversations_controller.dart';

class ConversationsBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatClient.create(Get.find()));
    Get.lazyPut(() => ChatRemoteDataSource(Get.find()));
    Get.lazyPut<ChatRepository>(() => ChatRepositoryImpl(Get.find()));
    Get.lazyPut(() => ConversationsController(Get.find(), Get.find()));
  }
}
