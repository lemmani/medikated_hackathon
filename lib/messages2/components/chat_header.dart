import 'package:flutter/material.dart';

class ChatHeader extends StatelessWidget {
  final String doctorName;
  final String doctorAvatar;

  const ChatHeader({
    super.key,
    required this.doctorName,
    required this.doctorAvatar,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            color: Colors.grey.shade200,
          ),
        ),
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(
              Icons.arrow_back_ios,
              color: Color(0xFF0052FF),
            ),
          ),
          const SizedBox(width: 16),
          CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(doctorAvatar),
          ),
          const SizedBox(width: 12),
          Text(
            doctorName,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Icon(Icons.chevron_right),
        ],
      ),
    );
  }
}