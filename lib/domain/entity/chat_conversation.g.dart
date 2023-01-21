// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_conversation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatConversation _$ChatConversationFromJson(Map<String, dynamic> json) =>
    ChatConversation(
      id: json['ChatId'] as int,
      participantId: json['ParticipantID'] as int,
      participantName: json['participantName'] as String,
      participantImage: json['ParticipantImage'] as String,
      lastMessageBody: json['LastMessage'] as String,
      lastMessageTime: json['LastMessageDateTime'] as String,
      unreadCount: json['unreadCount'] as int,
      createdAt: json['CreatedAt'] as String,
    );

Map<String, dynamic> _$ChatConversationToJson(ChatConversation instance) =>
    <String, dynamic>{
      'ChatId': instance.id,
      'ParticipantID': instance.participantId,
      'participantName': instance.participantName,
      'ParticipantImage': instance.participantImage,
      'LastMessage': instance.lastMessageBody,
      'LastMessageDateTime': instance.lastMessageTime,
      'unreadCount': instance.unreadCount,
      'CreatedAt': instance.createdAt,
    };
