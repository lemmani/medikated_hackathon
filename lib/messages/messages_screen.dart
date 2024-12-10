import 'package:flutter/material.dart';
import 'components/custom_app_bar.dart';
import 'package:medikated_hackathon/messages/components/search_bar.dart' as custom;
import 'components/message_list.dart';
import 'components/bottom_nav_bar.dart';
import 'models/message.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Message> messages = [
      const Message(
        doctorName: 'Dr Frank Ufondu',
        lastMessage: 'Your issue has been escalated....',
        timestamp: '9:41 AM',
        avatarUrl: '/placeholder.svg',
      ),
      const Message(
        doctorName: 'Support',
        lastMessage: 'Your issue has been escalated....',
        timestamp: 'Wed',
        avatarUrl: '/placeholder.svg',
        isSupport: true,
      ),
      const Message(
        doctorName: 'Dr. Eze',
        lastMessage: 'When you\'re free come....',
        timestamp: '19/06/2022',
        avatarUrl: '/placeholder.svg',
      ),
      const Message(
        doctorName: 'Dr. Anita Becker',
        lastMessage: 'Thank you very much.',
        timestamp: '11/04/2022',
        avatarUrl: '/placeholder.svg',
      ),
      const Message(
        doctorName: 'Dr. Frank Lampard',
        lastMessage: 'Legend help coach our midf....',
        timestamp: '12/01/2022',
        avatarUrl: '/placeholder.svg',
      ),
      const Message(
        doctorName: 'Dr. Petr Cech',
        lastMessage: 'We need to sign players....',
        timestamp: '18/07/2021',
        avatarUrl: '/placeholder.svg',
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SafeArea(
        child: Column(
          children: [
            const CustomAppBar(),
            const custom.SearchBar(),
            MessageList(messages: messages),
            const CustomBottomNavBar(selectedIndex: 3),
          ],
        ),
      ),
    );
  }
}