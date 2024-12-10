import 'package:flutter/material.dart';
import 'components/chat_header.dart';
import 'components/chat_messages.dart';
import 'components/chat_input.dart';
import 'models/message.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Message> messages = [
      Message(
        id: '1',
        sender: 'Dr. Frank Ufondu',
        content: 'Hey man, following from our last meeting i wanted to remind you of the medications you were to take alogside the Malaria medications.',
        timestamp: DateTime.now().subtract(const Duration(minutes: 21)),
        isDoctor: true,
        senderAvatar: '/placeholder.svg',
        reactions: [
          const Reaction(type: 'thumbsUp', userId: 'user1'),
          const Reaction(type: 'smile', userId: 'user1'),
        ],
      ),
      Message(
        id: '2',
        sender: 'Nomso Onyemuwa',
        content: "Thanks for the reminder. I wasn't able to get the Paracetamol but got Panadol-Extra instead. I hope no issues?",
        timestamp: DateTime.now().subtract(const Duration(minutes: 15)),
        isDoctor: false,
        senderAvatar: '/placeholder.svg',
        reactions: [
          const Reaction(type: 'thumbsUp', userId: 'user2'),
          const Reaction(type: 'smile', userId: 'user2'),
        ],
      ),
      Message(
        id: '3',
        sender: 'Dr. Frank Ufondu',
        content: "That's fine. Hope you're getting better?",
        timestamp: DateTime.now().subtract(const Duration(minutes: 2)),
        isDoctor: true,
        senderAvatar: '/placeholder.svg',
        reactions: [
          const Reaction(type: 'thumbsUp', userId: 'user1'),
          const Reaction(type: 'heart', userId: 'user1'),
          const Reaction(type: 'smile', userId: 'user1'),
        ],
      ),
    ];

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const ChatHeader(
              doctorName: 'Dr. Frank',
              doctorAvatar: '/placeholder.svg',
            ),
            ChatMessages(messages: messages),
            const ChatInput(),
          ],
        ),
      ),
    );
  }
}
