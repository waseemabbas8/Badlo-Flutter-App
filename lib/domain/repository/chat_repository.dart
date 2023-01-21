import '../../data/api/send_message_request_body.dart';
import '../../data/utils/response.dart';
import '../entity/chat_conversation.dart';
import '../entity/chat_message.dart';

abstract class ChatRepository {
  Future<GenericResponse<List<ChatConversation>>> getConversations(int profileId);
  Future<GenericResponse<List<ChatMessage>>> getMessages(int chatId);
  Future<GenericResponse<String>> sendMessage(SendMessageRequestBody sendMessageRequestBody);
  Future<GenericResponse<String>> deleteChat(int chatId);
  Future<GenericResponse<String>> deleteMessage(int messageId);
  Future<List<String>> getSuggestedMessages();
}
