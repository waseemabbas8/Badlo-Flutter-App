import 'package:badlo/domain/repository/chat_repository.dart';
import 'package:badlo/presentation/core/base/base_controller.dart';
import 'package:badlo/presentation/core/route/routes.dart';
import 'package:get/get.dart';

class OwnerContactController extends BaseController {
  final ChatRepository _chatRepository;

  OwnerContactController(this._chatRepository);

  void onContactOwnerClick() {
    Get.toNamed(Routes.chat);
  }

  void onViewAllOfferClick() {
    Get.toNamed(Routes.inspectionPackages);
  }

  void onSendMessageButtonPressed() {}
}
