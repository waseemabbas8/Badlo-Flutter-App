import 'package:retrofit/retrofit.dart';

import '../../domain/entity/chat_conversation.dart';
import '../../domain/entity/chat_message.dart';
import '../api/send_message_request_body.dart';
import '../utils/network/chat_client.dart';
import 'data_source.dart';

class ChatRemoteDataSource extends DataSource {
  final ChatClient _chatClient;

  ChatRemoteDataSource(this._chatClient);

  Future<HttpResponse<List<ChatConversation>>> getConversations(int profileId) =>
      _chatClient.getConversations(profileId);

  Future<HttpResponse<List<ChatMessage>>> getMessages(int chatId) =>
      _chatClient.getMessages(chatId);

  Future<HttpResponse<String>> sendMessage(SendMessageRequestBody sendMessageRequestBody) =>
      _chatClient.sendMessage(sendMessageRequestBody);

  Future<HttpResponse<String>> deleteChat(int chatId) => _chatClient.deleteMessage(chatId);

  Future<HttpResponse<String>> deleteMessage(int messageId) => _chatClient.deleteMessage(messageId);
}
