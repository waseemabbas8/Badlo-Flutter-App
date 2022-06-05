import 'package:badlo/data/source/data_source.dart';
import 'package:badlo/data/utils/network/chat_client.dart';
import 'package:badlo/domain/entity/chat_message.dart';
import 'package:retrofit/retrofit.dart';

class ChatRemoteDataSource extends DataSource {
  final ChatClient _chatClient;

  ChatRemoteDataSource(this._chatClient);

  Future<HttpResponse<List<ChatMessage>>> getMessages(int senderId, int receiverId) =>
      _chatClient.getMessages(senderId, receiverId);

  Future<HttpResponse<String>> sendMessage(int senderId, int receiverId, String body) =>
      _chatClient.sendMessage(senderId, receiverId, body);
}
