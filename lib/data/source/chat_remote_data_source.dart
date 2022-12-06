import 'package:retrofit/retrofit.dart';

import '../../domain/entity/chat_conversation.dart';
import '../../domain/entity/chat_message.dart';
import '../utils/network/chat_client.dart';
import 'data_source.dart';

class ChatRemoteDataSource extends DataSource {
  final ChatClient _chatClient;

  ChatRemoteDataSource(this._chatClient);

  Future<HttpResponse<List<ChatConversation>>> getConversations(int profileId) =>
      _chatClient.getConversations(profileId);

  Future<HttpResponse<List<ChatMessage>>> getMessages(int senderId, int receiverId) =>
      _chatClient.getMessages(senderId, receiverId);

  Future<HttpResponse<String>> sendMessage(int senderId, int receiverId, String body) =>
      _chatClient.sendMessage(senderId, receiverId, body);

  Future<HttpResponse<String>> deleteChat(int chatId) => _chatClient.deleteMessage(chatId);

  Future<HttpResponse<String>> deleteMessage(int messageId) => _chatClient.deleteMessage(messageId);
}
