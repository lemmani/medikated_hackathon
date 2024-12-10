import 'package:flutter/material.dart';
import 'cader_item.dart';

class CadersList extends StatelessWidget {
  const CadersList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Caders',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'See more',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const CaderItem(
            icon: Icons.favorite,
            title: 'Cardiologist',
            subtitle: 'Heart Specialist • 75 available doctors',
            iconColor: Colors.blue,
          ),
          const SizedBox(height: 12),
          const CaderItem(
            icon: Icons.psychology,
            title: 'Neurologist',
            subtitle: 'Brain Specialist • 33 available doctors',
            iconColor: Colors.blue,
          ),
          const SizedBox(height: 12),
          const CaderItem(
            icon: Icons.medical_services,
            title: 'Dentist',
            subtitle: 'Dental Surgeon • 119 available doctors',
            iconColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}