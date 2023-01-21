// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatMessage _$ChatMessageFromJson(Map<String, dynamic> json) => ChatMessage(
      json['messageId'] as int,
      json['senderId'] as int,
      json['receiverId'] as int,
      json['chatId'] as int,
      json['message'] as String,
      json['createdAt'] as String,
    );

Map<String, dynamic> _$ChatMessageToJson(ChatMessage instance) =>
    <String, dynamic>{
      'messageId': instance.id,
      'senderId': instance.senderId,
      'receiverId': instance.receiverId,
      'chatId': instance.conversationId,
      'message': instance.message,
      'createdAt': instance.createdAt,
    };
