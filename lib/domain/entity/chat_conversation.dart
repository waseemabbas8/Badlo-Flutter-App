import 'package:json_annotation/json_annotation.dart';

part 'chat_conversation.g.dart';

@JsonSerializable()
class ChatConversation {
  @JsonKey(name: 'ChatID')
  final int id;
  @JsonKey(name: 'ParticipantID')
  final int participantId;
  @JsonKey(name: 'participantName')
  final String participantName;
  @JsonKey(name: 'ParticipantImage')
  final String participantImage;
  @JsonKey(name: 'LastMessage')
  final String lastMessageBody;
  @JsonKey(name: 'LastMessageTime')
  final String lastMessageTime;
  @JsonKey(name: 'UnreadCount')
  final int unreadCount;

  const ChatConversation({
    required this.id,
    required this.participantId,
    required this.participantName,
    required this.participantImage,
    required this.lastMessageBody,
    required this.lastMessageTime,
    required this.unreadCount,
  });

  factory ChatConversation.fromJson(Map<String, dynamic> json) => _$ChatConversationFromJson(json);

  Map<String, dynamic> toJson() => _$ChatConversationToJson(this);

  static const List<ChatConversation> chatConversations = [
    ChatConversation(
      id: 6,
      participantId: 1,
      participantName: 'Rayan',
      participantImage: 'http://shorturl.at/hilp0',
      lastMessageBody: 'How are you sir?',
      lastMessageTime: '09:34 PM',
      unreadCount: 1,
    ),
    ChatConversation(
      id: 1,
      participantId: 1,
      participantName: 'Waseem Abbas',
      participantImage: 'http://shorturl.at/xNUX9',
      lastMessageBody: 'How are you sir?',
      lastMessageTime: '09:34 PM',
      unreadCount: 1,
    ),
    ChatConversation(
      id: 2,
      participantId: 5,
      participantName: 'Ali Rehan',
      participantImage: 'http://shorturl.at/cklvC',
      lastMessageBody: 'I want to sell it in 4000 PKR.',
      lastMessageTime: '06:05 AM',
      unreadCount: 0,
    ),
    ChatConversation(
      id: 3,
      participantId: 13,
      participantName: 'Mehsam Saeed',
      participantImage: 'http://shorturl.at/xNUX9',
      lastMessageBody: 'Yaar woh plot ka kaam kahan tak huwa?',
      lastMessageTime: '12:00 AM',
      unreadCount: 3,
    ),
    ChatConversation(
      id: 8,
      participantId: 45,
      participantName: 'kainat Nawaz',
      participantImage: 'http://shorturl.at/blmsy',
      lastMessageBody: 'Flutter developer with frontend and backend strong grip',
      lastMessageTime: '12:45 AM',
      unreadCount: 0,
    ),
    ChatConversation(
      id: 23,
      participantId: 46,
      participantName: 'Iqra Muhammad Ali',
      participantImage: 'http://shorturl.at/chsD8',
      lastMessageBody: 'Started learning Flutter and Inshallah will achieve my goals soon.',
      lastMessageTime: '12:45 AM',
      unreadCount: 0,
    ),
  ];
}
