import 'package:badlo/data/api/send_message_request_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/utils/response.dart';
import '../../../domain/entity/chat_conversation.dart';
import '../../../domain/entity/chat_message.dart';
import '../../../domain/entity/user_profile.dart';
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

  late UserProfile profile;

  final RxBool _messageSendingFailed = RxBool(false);
  bool get messageSendingFailed => _messageSendingFailed.value;

  SendMessageRequestBody? messageToSend;

  @override
  void onInit() async {
    profile = _preferenceRepository.getProfile()!;
    super.onInit();
    conversation = Get.arguments[0];
    _suggestions.addAll(await _chatRepository.getSuggestedMessages());
    _fetchMessages();
  }

  void _fetchMessages() async {
    final response = await _chatRepository.getMessages(conversation.id);
    if (response.result is SuccessResult) {
      _messages.value = response.data!;
    }
  }

  void onSendButtonPressed() {
    if(messageBodyController.text.isEmpty) {
      return;
    }
    messageToSend = SendMessageRequestBody(
      id: conversation.id,
      message: messageBodyController.text,
      profileId: profile.id,
      receiverId: conversation.participantId,
    );
    final SendMessageRequestBody requestBody = messageToSend!;
    messageBodyController.text = '';
    final message = ChatMessage(0, profile.id, requestBody.receiverId, requestBody.id, requestBody.message, '');
    _messages.add(message);
    refresh();
    _sendMessage();
  }

  void onRetry() {
    _sendMessage();
  }

  void _sendMessage() async {
    final response = await _chatRepository.sendMessage(messageToSend!);
    if(response.result is SuccessResult) {
      _fetchMessages();
    } else {
      _messageSendingFailed.value = true;
    }
  }

  void onSuggestedMessageClicked(int index) {
    messageBodyController.text = suggestions[index];
  }
}
