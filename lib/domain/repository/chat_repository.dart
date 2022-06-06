import 'package:badlo/data/utils/response.dart';
import 'package:badlo/domain/entity/chat_message.dart';

abstract class ChatRepository {
  Future<GenericResponse<List<ChatMessage>>> getMessages(int senderId, int receiverId);
  Future<GenericResponse<String>> sendMessage(int senderId, int receiverId, String body);
  Future<List<String>> getSuggestedMessages();
}
