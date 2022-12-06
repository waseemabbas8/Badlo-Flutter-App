import 'package:badlo/data/repository/chat_repository_impl.dart';
import 'package:badlo/data/source/chat_remote_data_source.dart';
import 'package:badlo/data/utils/network/chat_client.dart';
import 'package:badlo/domain/repository/chat_repository.dart';
import 'package:badlo/presentation/page/chat/chat_controller.dart';
import 'package:get/get.dart';

class ChatBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatClient.create(Get.find()));
    Get.lazyPut(() => ChatRemoteDataSource(Get.find()));
    Get.lazyPut<ChatRepository>(() => ChatRepositoryImpl(Get.find()));
    Get.lazyPut(() => ChatController(Get.find(), Get.find()));
  }
}
