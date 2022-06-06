import 'package:badlo/data/source/chat_remote_data_source.dart';
import 'package:badlo/data/utils/response.dart';
import 'package:badlo/domain/entity/chat_message.dart';
import 'package:badlo/domain/repository/chat_repository.dart';

class ChatRepositoryImpl extends ChatRepository {
  final ChatRemoteDataSource _chatRemoteDataSource;

  ChatRepositoryImpl(this._chatRemoteDataSource);

  @override
  Future<GenericResponse<List<ChatMessage>>> getMessages(int senderId, int receiverId) {
    // TODO: implement getMessages
    throw UnimplementedError();
  }

  @override
  Future<GenericResponse<String>> sendMessage(int senderId, int receiverId, String body) {
    // TODO: implement sendMessage
    throw UnimplementedError();
  }

  @override
  Future<List<String>> getSuggestedMessages() async {
    Future.delayed(const Duration(seconds: 1));
    return ['Hi, is available?', 'Can it be delivered today', 'Thank you', 'Any variations?'];
  }
}
