import 'package:get/get.dart';

import '../../../data/repository/notifications_repository_impl.dart';
import '../../../data/source/notifications_remote_data_source.dart';
import '../../../data/utils/network/notifications_client.dart';
import '../../../domain/repository/notifications_repository.dart';
import 'notifications_controller.dart';

class NotificationsBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotificationsClient.create(Get.find()));
    Get.lazyPut(() => NotificationsRemoteDataSource(Get.find()));
    Get.lazyPut<NotificationsRepository>(() => NotificationsRepositoryImpl(Get.find()));
    Get.lazyPut(() => NotificationsController(Get.find()));
  }
}
