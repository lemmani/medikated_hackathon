import 'dart:ui';

class Message {
  final String id;
  final String sender;
  final String content;
  final DateTime timestamp;
  final List<Reaction> reactions;
  final bool isDoctor;
  final String? senderAvatar;
  final VoidCallback? onTap; // Added onTap callback

  const Message({
    required this.id,
    required this.sender,
    required this.content,
    required this.timestamp,
    this.reactions = const [],
    required this.isDoctor,
    this.senderAvatar,
    this.onTap, // Initialize the onTap callback
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
