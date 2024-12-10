import 'package:flutter/material.dart';
import 'action_card.dart';

class GeneralNeedsSection extends StatelessWidget {
  const GeneralNeedsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'For General Needs',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Get medical advice, prescriptions, test & referrals by video appointment with our doctors.',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 16),
          ActionCard(
            icon: Icons.message,
            iconColor: Colors.blue,
            iconBackground: Colors.blue.shade50,
            title: 'Talk to a Doctor',
            subtitle: 'Get medical advice, precriptions, test & more.',
            onTap: () {},
          ),
          const SizedBox(height: 12),
          ActionCard(
            icon: Icons.local_hospital,
            iconColor: Colors.red,
            iconBackground: Colors.red.shade50,
            title: 'Request Urgent Care',
            subtitle: 'Chat by video with the next available doctor.',
            onTap: () {},
          ),
          const SizedBox(height: 12),
          ActionCard(
            icon: Icons.local_pharmacy,
            iconColor: Colors.green,
            iconBackground: Colors.green.shade50,
            title: 'Locate a Pharmacy',
            subtitle: 'Locate a Pharmacy within your area to purchase medications.',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}