import 'package:flutter/material.dart';

class InfoSection extends StatelessWidget {
  final String title;
  final String content;

  const InfoSection({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Expanded(
              child: Text(
                content,
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                '(Change)',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
        const Divider(),
        const SizedBox(height: 16),
      ],
    );
  }
}