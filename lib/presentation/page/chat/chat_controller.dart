import 'package:badlo/domain/repository/chat_repository.dart';
import 'package:badlo/presentation/core/base/base_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatController extends BaseController {
  final ChatRepository _chatRepository;

  final RxList<String> _suggestions = RxList();

  List<String> get suggestions => _suggestions;

  ChatController(this._chatRepository);

  final TextEditingController messageBodyController = TextEditingController();

  @override
  void onInit() async {
    super.onInit();
    _suggestions.addAll(await _chatRepository.getSuggestedMessages());
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
