import 'package:json_annotation/json_annotation.dart';

part 'chat_message.g.dart';

@JsonSerializable()
class ChatMessage {
  @JsonKey(name: 'messageId')
  final int id;
  final int senderId;
  final int receiverId;
  @JsonKey(name: 'chatId')
  final int conversationId;
  final String message;
  final String createdAt;

  ChatMessage(this.id, this.senderId, this.receiverId, this.conversationId, this.message, this.createdAt);

  factory ChatMessage.fromJson(Map<String, dynamic> json) => _$ChatMessageFromJson(json);

  Map<String, dynamic> toJson() => _$ChatMessageToJson(this);

  static final List<ChatMessage> chatMessages = [
    ChatMessage(1, 2, 1, 1, 'Hi, How are you doing?', ''),
    ChatMessage(2, 1, 1, 1, 'I amd doing good. Thanks. And you?', ''),
    ChatMessage(1, 2, 1, 1, 'Ah Enjoying my day.', ''),
    ChatMessage(1, 2, 1, 1, 'I want to swap my iphone 14 pro max with you. Do you like to swap?', ''),
    ChatMessage(2, 1, 1, 1, 'Yes sure. I want to change my phone as well to experience some new.', ''),
    ChatMessage(2, 1, 1, 1, 'Can you please explain more details about the product?', ''),
    ChatMessage(2, 1, 1, 1, 'Then I will be decide to continue deal with you.', ''),
    ChatMessage(1, 2, 1, 1, 'It is a brand new phone with 10/10 condition.', ''),
  ];
}
