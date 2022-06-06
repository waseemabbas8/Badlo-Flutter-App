import 'package:json_annotation/json_annotation.dart';

part 'chat_message.g.dart';

@JsonSerializable()
class ChatMessage {
  final int id;
  final int senderId;
  final int receiverId;
  final int conversationId;
  final String body;

  ChatMessage(this.id, this.senderId, this.receiverId, this.conversationId, this.body);

  factory ChatMessage.fromJson(Map<String, dynamic> json) => _$ChatMessageFromJson(json);

  Map<String, dynamic> toJson() => _$ChatMessageToJson(this);
}
