import 'package:get/get.dart';

import '../../../../domain/entity/chat_conversation.dart';
import '../../../core/base/base_controller.dart';
import '../../../core/route/routes.dart';

class ConversationsController extends BaseController {
  final RxList<ChatConversation> _conversations = RxList();
  List<ChatConversation> get conversations => _conversations;

  @override
  void onInit() {
    _getChatConversation();
    super.onInit();
  }

  void _getChatConversation() async {
    _conversations.value = ChatConversation.chatConversations;
  }

  void onConversationClick(ChatConversation conversation) {
    Get.toNamed(Routes.chat, arguments: [conversation]);
  }
}
