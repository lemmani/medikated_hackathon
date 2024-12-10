import 'package:flutter/material.dart';

class ReportList extends StatelessWidget {
  const ReportList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ReportItem(
          title: 'General report',
          date: 'Jul 10, 2024',
          onTap: () {},
        ),
        ReportItem(
          title: 'General report',
          date: 'Aug 15, 2024',
          onTap: () {},
        ),
      ],
    );
  }
}

class ReportItem extends StatelessWidget {
  final String title;
  final String date;
  final VoidCallback onTap;

  const ReportItem({
    super.key,
    required this.title,
    required this.date,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.blue.shade50,
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Icon(
            Icons.description_outlined,
            color: Color(0xFF0052FF),
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Text(
          date,
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 12,
          ),
        ),
        trailing: IconButton(
          icon: const Icon(Icons.more_horiz),
          onPressed: () {},
          color: Colors.grey,
        ),
        onTap: onTap,
      ),
    );
  }
}