import 'package:flutter/material.dart';

class DaySection extends StatelessWidget {
  final String title;

  const DaySection({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 12),
        TextButton.icon(
          onPressed: () {},
          icon: const Icon(
            Icons.add,
            color: Colors.blue,
          ),
          label: const Text(
            'Book an Appointment',
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const Divider(),
        const SizedBox(height: 16),
      ],
    );
  }
}