import 'package:json_annotation/json_annotation.dart';

part 'send_message_request_body.g.dart';

@JsonSerializable()
class SendMessageRequestBody {
    int id;
    String message;
    int profileId;
    int receiverId;

    SendMessageRequestBody({required this.id, required this.message, required this.profileId, required this.receiverId,});

    factory SendMessageRequestBody.fromJson(Map<String, dynamic> json) => _$SendMessageRequestBodyFromJson(json);

    Map<String, dynamic> toJson() => _$SendMessageRequestBodyToJson(this);
}