import 'package:badlo/data/api/send_message_request_body.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import '../../../domain/entity/chat_conversation.dart';
import '../../../domain/entity/chat_message.dart';
import '../data_constants.dart';

part 'chat_client.g.dart';

@RestApi(baseUrl: DataConstants.restApiBaseUrl)
abstract class ChatClient {
  static ChatClient create(Dio dio) => ChatClient(dio);

  factory ChatClient(Dio dio, {String baseUrl}) = _ChatClient;

  @GET('chat/GetChatsParticipants')
  Future<HttpResponse<List<ChatConversation>>> getConversations(
    @Query('profileID') int profileId,
  );

  @GET('chat/getChatHistory')
  Future<HttpResponse<List<ChatMessage>>> getMessages(
    @Query('chatid') int chatId,
  );

  @POST('chat/sendMessage')
  Future<HttpResponse<String>> sendMessage(
    @Body() SendMessageRequestBody sendMessageRequestBody,
  );

  @DELETE('chat/DeleteChat')
  Future<HttpResponse<String>> deleteChat(
    @Query('id') int chatId,
  );

  @DELETE('chat/DeleteMessage')
  Future<HttpResponse<String>> deleteMessage(
    @Query('messageId') int messageId,
  );
}
