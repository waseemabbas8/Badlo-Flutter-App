class ChatConversation {
  final int id;
  final int senderId;
  final String senderName;
  final String senderImage;
  final String lastMessageBody;
  final String lastMessageTime;
  final int unreadCount;

  const ChatConversation({
    required this.id,
    required this.senderId,
    required this.senderName,
    required this.senderImage,
    required this.lastMessageBody,
    required this.lastMessageTime,
    required this.unreadCount,
  });

  static const List<ChatConversation> chatConversations = [
    ChatConversation(
      id: 6,
      senderId: 1,
      senderName: 'Rayan',
      senderImage: 'http://shorturl.at/hilp0',
      lastMessageBody: 'How are you sir?',
      lastMessageTime: '09:34 PM',
      unreadCount: 1,
    ),
    ChatConversation(
      id: 1,
      senderId: 1,
      senderName: 'Waseem Abbas',
      senderImage: 'http://shorturl.at/xNUX9',
      lastMessageBody: 'How are you sir?',
      lastMessageTime: '09:34 PM',
      unreadCount: 1,
    ),
    ChatConversation(
      id: 2,
      senderId: 5,
      senderName: 'Ali Rehan',
      senderImage: 'http://shorturl.at/cklvC',
      lastMessageBody: 'I want to sell it in 4000 PKR.',
      lastMessageTime: '06:05 AM',
      unreadCount: 0,
    ),
    ChatConversation(
      id: 3,
      senderId: 13,
      senderName: 'Mehsam Saeed',
      senderImage: 'http://shorturl.at/xNUX9',
      lastMessageBody: 'Yaar woh plot ka kaam kahan tak huwa?',
      lastMessageTime: '12:00 AM',
      unreadCount: 3,
    ),
    ChatConversation(
      id: 8,
      senderId: 45,
      senderName: 'kainat Nawaz',
      senderImage: 'http://shorturl.at/blmsy',
      lastMessageBody: 'Flutter developer with frontend and backend strong grip',
      lastMessageTime: '12:45 AM',
      unreadCount: 0,
    ),
    ChatConversation(
      id: 23,
      senderId: 46,
      senderName: 'Iqra Muhammad Ali',
      senderImage: 'http://shorturl.at/chsD8',
      lastMessageBody: 'Started learning Flutter and Inshallah will achieve my goals soon.',
      lastMessageTime: '12:45 AM',
      unreadCount: 0,
    ),
  ];
}
