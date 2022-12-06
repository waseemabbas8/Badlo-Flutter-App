import 'package:badlo/domain/entity/chat_conversation.dart';
import 'package:badlo/domain/repository/chat_repository.dart';
import 'package:badlo/presentation/core/base/base_controller.dart';
import 'package:badlo/presentation/core/route/routes.dart';
import 'package:get/get.dart';

class OwnerContactController extends BaseController {
  final ChatRepository _chatRepository;

  OwnerContactController(this._chatRepository);

  void onContactOwnerClick() {
    const conversation = ChatConversation(
      id: 1,
      participantId: 2,
      participantName: 'Rian',
      participantImage: 'http://shorturl.at/drHTZ',
      lastMessageBody: 'I want to swap my honda car.',
      lastMessageTime: '07:00 PM',
      unreadCount: 0,
    );
    Get.toNamed(Routes.chat, arguments: [conversation]);
  }

  void onViewAllOfferClick() {
    Get.toNamed(Routes.viewAllOffer);
  }

  void onViewInspectionsClick() {
    Get.toNamed(Routes.inspectionPackages);
  }

  void onSendMessageButtonPressed() {}
}
