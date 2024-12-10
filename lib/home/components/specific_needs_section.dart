import 'package:flutter/material.dart';
import 'action_card.dart';

class SpecificNeedsSection extends StatelessWidget {
  const SpecificNeedsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'For Specific Needs',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Our primary care doctors can help you with a broad range of health issues, medications and more by video appointment.',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 16),
          ActionCard(
            icon: Icons.female,
            iconColor: Colors.pink,
            iconBackground: Colors.pink.shade50,
            title: "Women's Health",
            subtitle: 'UTI, Birth control, Menopause, Period problems, Yeast infections, & more.',
            onTap: () {},
          ),
          const SizedBox(height: 12),
          ActionCard(
            icon: Icons.child_care,
            iconColor: Colors.purple,
            iconBackground: Colors.purple.shade50,
            title: "Children's Health",
            subtitle: 'Cold & flu symptoms, Diarrhea or Constipation, Skin rashes, & Allergies',
            onTap: () {},
          ),
          const SizedBox(height: 12),
          ActionCard(
            icon: Icons.male,
            iconColor: Colors.blue,
            iconBackground: Colors.blue.shade50,
            title: "Men's Health",
            subtitle: 'STI symptoms, Erection issues, Bladder or Bowel issues, Skin & hair care.',
            onTap: () {},
          ),
          const SizedBox(height: 12),
          ActionCard(
            icon: Icons.elderly,
            iconColor: Colors.teal,
            iconBackground: Colors.teal.shade50,
            title: 'Senior Health',
            subtitle: 'Muscle or joint pain, Medication management, Preventive health method.',
            onTap: () {},
          ),
          const SizedBox(height: 16),
          TextButton(
            onPressed: () {},
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text(
                  'See more actions',
                  style: TextStyle(
                    color: Color(0xFF0052FF),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.chevron_right,
                  color: Color(0xFF0052FF),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}