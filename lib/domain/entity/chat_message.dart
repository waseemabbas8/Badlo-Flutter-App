class ChatMessage {
  final int id;
  final int senderId;
  final int receiverId;
  final int conversationId;
  final String body;

  ChatMessage(this.id, this.senderId, this.receiverId, this.conversationId, this.body);
}
