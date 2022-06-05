import 'package:badlo/data/repository/chat_repository_impl.dart';
import 'package:badlo/data/source/chat_remote_data_source.dart';
import 'package:badlo/data/utils/network/chat_client.dart';
import 'package:badlo/domain/repository/chat_repository.dart';
import 'package:badlo/presentation/page/chat/owner_contact_controller.dart';
import 'package:get/get.dart';

class OwnerContactBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatClient.create(Get.find()));
    Get.lazyPut(() => ChatRemoteDataSource(Get.find()));
    Get.lazyPut<ChatRepository>(() => ChatRepositoryImpl(Get.find()));
    Get.lazyPut(() => OwnerContactController(Get.find()));
  }
}
