import 'package:flutter/material.dart';
import 'components/message_item.dart';
import 'components/bottom_nav_bar.dart';
import '../messages2/chat_screen.dart';


class MessagesScreen extends StatelessWidget {
  MessagesScreen({super.key});

  final List<Map<String, String>> messages = [
    {
      'name': 'Dr Frank Ufondu',
      'message': 'Your issue has been escalated....',
      'time': '9:41 AM',
      'screen': 'hello'
    },
    {
      'name': 'Support',
      'message': 'Your issue has been escalated....',
      'time': 'Wed',
      'screen': 'home'
    },
    {
      'name': 'Dr. Eze',
      'message': 'When you\'re free come....',
      'time': '19/06/2022',
      'screen': 'hello'
    },
    {
      'name': 'Dr. Anita Becker',
      'message': 'Thank you very much.',
      'time': '11/04/2022',
      'screen': 'home'
    },
    {
      'name': 'Dr. Frank Lampard',
      'message': 'Legend help coach our midf....',
      'time': '12/01/2022',
      'screen': 'hello'
    },
    {
      'name': 'Dr. Petr Cech',
      'message': 'We need to sign players....',
      'time': '18/07/2021',
      'screen': 'home'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Messages',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_horiz, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: const Icon(Icons.search, color: Colors.grey),
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: messages.length,
              separatorBuilder: (context, index) => const Divider(height: 1),
              itemBuilder: (context, index) {
                return MessageItem(
                  name: messages[index]['name']!,
                  message: messages[index]['message']!,
                  time: messages[index]['time']!,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => messages[index]['screen'] == 'hello'
                            ? const ChatScreen()
                            : const ChatScreen(),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}