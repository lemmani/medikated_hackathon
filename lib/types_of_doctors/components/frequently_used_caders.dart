import 'package:flutter/material.dart';
import 'cader_item.dart';

class FrequentlyUsedCaders extends StatelessWidget {
  const FrequentlyUsedCaders({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Frequently used Caders.',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16),
          CaderItem(
            icon: Icons.medical_services,
            title: 'Medical Officers',
            subtitle: '365 available doctors',
            iconColor: Colors.blue,
          ),
          SizedBox(height: 12),
          CaderItem(
            icon: Icons.child_care,
            title: 'Child Specialist',
            subtitle: '75 available doctors',
            iconColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}