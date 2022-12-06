import '../../domain/entity/chat_conversation.dart';
import '../../domain/entity/chat_message.dart';
import '../../domain/repository/chat_repository.dart';
import '../source/chat_remote_data_source.dart';
import '../utils/response.dart';

class ChatRepositoryImpl extends ChatRepository {
  final ChatRemoteDataSource _chatRemoteDataSource;

  ChatRepositoryImpl(this._chatRemoteDataSource);

  @override
  Future<GenericResponse<List<ChatMessage>>> getMessages(int senderId, int receiverId) =>
      ResponseHandler.handle(() => _chatRemoteDataSource.getMessages(senderId, receiverId));

  @override
  Future<GenericResponse<String>> sendMessage(int senderId, int receiverId, String body) =>
      ResponseHandler.handle(() => _chatRemoteDataSource.sendMessage(senderId, receiverId, body));

  @override
  Future<List<String>> getSuggestedMessages() async {
    Future.delayed(const Duration(seconds: 1));
    return ['Hi, is available?', 'Can it be delivered today', 'Thank you', 'Any variations?'];
  }

  @override
  Future<GenericResponse<String>> deleteChat(int chatId) =>
      ResponseHandler.handle(() => _chatRemoteDataSource.deleteChat(chatId));

  @override
  Future<GenericResponse<String>> deleteMessage(int messageId) =>
      ResponseHandler.handle(() => _chatRemoteDataSource.deleteMessage(messageId));

  @override
  Future<GenericResponse<List<ChatConversation>>> getConversations(int profileId) =>
      ResponseHandler.handle(() => _chatRemoteDataSource.getConversations(profileId));
}
