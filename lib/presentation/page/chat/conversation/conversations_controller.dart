import 'package:get/get.dart';

import '../../../../data/utils/response.dart';
import '../../../../domain/entity/chat_conversation.dart';
import '../../../../domain/entity/user_profile.dart';
import '../../../../domain/repository/chat_repository.dart';
import '../../../../domain/repository/preference_repository.dart';
import '../../../core/base/base_controller.dart';
import '../../../core/route/routes.dart';

class ConversationsController extends BaseController {
  final ChatRepository _chatRepository;
  final PreferenceRepository _preferenceRepository;
  ConversationsController(this._chatRepository, this._preferenceRepository);

  final RxList<ChatConversation> _conversations = RxList();
  List<ChatConversation> get conversations => _conversations;

  late UserProfile _profile;

  @override
  void onInit() {
    _profile = _preferenceRepository.getProfile()!;
    _getChatConversation();
    super.onInit();
  }

  void _getChatConversation() async {
    final response = await _chatRepository.getConversations(_profile.id);
    if(response.result is SuccessResult) {
      _conversations.value = response.data!;
    }
    // _conversations.value = ChatConversation.chatConversations;
  }

  void onConversationClick(ChatConversation conversation) {
    Get.toNamed(Routes.chat, arguments: [conversation]);
  }

  void onDeleteChat(ChatConversation conversation) async {
    final response = await _chatRepository.deleteChat(conversation.id);
    if (response.result is SuccessResult) {
      _conversations.remove(conversation);
      _conversations.refresh();
    }
  }
}
