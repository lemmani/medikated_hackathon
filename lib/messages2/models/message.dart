class Message {
  final String id;
  final String sender;
  final String content;
  final DateTime timestamp;
  final List<Reaction> reactions;
  final bool isDoctor;
  final String? senderAvatar;

  const Message({
    required this.id,
    required this.sender,
    required this.content,
    required this.timestamp,
    this.reactions = const [],
    required this.isDoctor,
    this.senderAvatar,
  });
}

class Reaction {
  final String type;
  final String userId;

  const Reaction({
    required this.type,
    required this.userId,
  });
}