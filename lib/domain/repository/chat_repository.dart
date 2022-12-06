import '../../data/utils/response.dart';
import '../entity/chat_conversation.dart';
import '../entity/chat_message.dart';

abstract class ChatRepository {
  Future<GenericResponse<List<ChatConversation>>> getConversations(int profileId);
  Future<GenericResponse<List<ChatMessage>>> getMessages(int senderId, int receiverId);
  Future<GenericResponse<String>> sendMessage(int senderId, int receiverId, String body);
  Future<GenericResponse<String>> deleteChat(int chatId);
  Future<GenericResponse<String>> deleteMessage(int messageId);
  Future<List<String>> getSuggestedMessages();
}
