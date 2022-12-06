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

  @GET('chat/messages')
  Future<HttpResponse<List<ChatMessage>>> getMessages(
    @Query('senderId') int senderId,
    @Query('receiverId') int receiverId,
  );

  @POST('chat/send')
  Future<HttpResponse<String>> sendMessage(
    @Field('senderId') int senderId,
    @Field('receiverId') int receiverId,
    @Field('body') String body,
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
