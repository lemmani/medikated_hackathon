import 'package:flutter/material.dart';
import '../models/message.dart';
import 'message_bubble.dart';
import 'time_divider.dart';

class ChatMessages extends StatelessWidget {
  final List<Message> messages;

  const ChatMessages({
    super.key,
    required this.messages,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: messages.length + 1, // +1 for the "Now" divider
        itemBuilder: (context, index) {
          if (index == messages.length - 1) {
            return Column(
              children: [
                SizedBox(height: 16),
                TimeDivider(text: 'Now'),
                SizedBox(height: 16),
              ],
            );
          }
          return MessageBubble(message: messages[index]);
        },
      ),
    );
  }
}