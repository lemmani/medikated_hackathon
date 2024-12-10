import 'package:flutter/material.dart';
import '../models/message.dart';

class MessageTile extends StatelessWidget {
  final Message message;

  const MessageTile({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        leading: CircleAvatar(
          radius: 24,
          backgroundColor: message.isSupport ? Colors.green[100] : Colors.grey[200],
          backgroundImage: message.isSupport ? null : NetworkImage(message.avatarUrl),
          child: message.isSupport
              ? const Icon(Icons.support_agent, color: Colors.green)
              : null,
        ),
        title: Text(
          message.doctorName,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        subtitle: Text(
          message.lastMessage,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              message.timestamp,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
            const SizedBox(width: 4),
            const Icon(
              Icons.chevron_right,
              color: Colors.grey,
              size: 20,
            ),
          ],
        ),
        onTap: () {},
      ),
    );
  }
}