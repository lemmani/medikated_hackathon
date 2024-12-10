import 'package:flutter/material.dart';
import '../models/message.dart';
import 'message_tile.dart';

class MessageList extends StatelessWidget {
  final List<Message> messages;

  const MessageList({
    super.key,
    required this.messages,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: messages.length,
        separatorBuilder: (context, index) => Divider(
          color: Colors.grey.shade200,
          height: 1,
        ),
        itemBuilder: (context, index) {
          return MessageTile(message: messages[index]);
        },
      ),
    );
  }
}