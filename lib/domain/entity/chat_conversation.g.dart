// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_conversation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatConversation _$ChatConversationFromJson(Map<String, dynamic> json) =>
    ChatConversation(
      id: json['ChatID'] as int,
      participantId: json['ParticipantID'] as int,
      participantName: json['participantName'] as String,
      participantImage: json['ParticipantImage'] as String,
      lastMessageBody: json['LastMessage'] as String,
      lastMessageTime: json['LastMessageTime'] as String,
      unreadCount: json['UnreadCount'] as int,
    );

Map<String, dynamic> _$ChatConversationToJson(ChatConversation instance) =>
    <String, dynamic>{
      'ChatID': instance.id,
      'ParticipantID': instance.participantId,
      'participantName': instance.participantName,
      'ParticipantImage': instance.participantImage,
      'LastMessage': instance.lastMessageBody,
      'LastMessageTime': instance.lastMessageTime,
      'UnreadCount': instance.unreadCount,
    };
