import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/utils/response.dart';
import '../../../domain/entity/chat_conversation.dart';
import '../../../domain/entity/chat_message.dart';
import '../../../domain/repository/chat_repository.dart';
import '../../../domain/repository/preference_repository.dart';
import '../../core/base/base_controller.dart';

class ChatController extends BaseController {
  final ChatRepository _chatRepository;
  final PreferenceRepository _preferenceRepository;
  ChatController(this._chatRepository, this._preferenceRepository);

  final RxList<String> _suggestions = RxList();

  List<String> get suggestions => _suggestions;

  final RxList<ChatMessage> _messages = RxList();
  List<ChatMessage> get messages => _messages;

  final TextEditingController messageBodyController = TextEditingController();

  late ChatConversation conversation;

  @override
  void onInit() async {
    super.onInit();
    conversation = Get.arguments[0];
    _suggestions.addAll(await _chatRepository.getSuggestedMessages());
    _fetchMessages();
  }

  void _fetchMessages() async {
    // final response = await _chatRepository.getMessages(1, conversation.participantId);
    // if (response.result is SuccessResult) {
    //   _messages.value = response.data!;
    // }
    _messages.value = ChatMessage.chatMessages;
  }

  void onSendButtonPressed() {
    //TODO(call api to send message)
    // _chatRepository.sendMessage(senderId, receiverId, body);

    messageBodyController.text = '';
  }

  void onSuggestedMessageClicked(int index) {
    messageBodyController.text = suggestions[index];
  }
}
