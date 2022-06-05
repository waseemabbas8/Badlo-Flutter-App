import 'package:badlo/data/utils/data_constants.dart';
import 'package:badlo/domain/entity/chat_message.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'chat_client.g.dart';

@RestApi(baseUrl: DataConstants.restApiBaseUrl)
abstract class ChatClient {
  static ChatClient create(Dio dio) => ChatClient(dio);

  factory ChatClient(Dio dio, {String baseUrl}) = _ChatClient;

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
}
