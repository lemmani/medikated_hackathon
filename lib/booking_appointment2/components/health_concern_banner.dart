import 'package:flutter/material.dart';

class HealthConcernBanner extends StatelessWidget {
  const HealthConcernBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFFFEBEE),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: const [
          Icon(
            Icons.local_hospital,
            color: Colors.red,
          ),
          SizedBox(width: 8),
          Text(
            'New Health Concern',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}