import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          '/Users/emmanuelfrancislahai/Desktop/MEDIKATED_HACKATHON/medikated_hackathon/assets/images/medikated_logo.png',
          height: 80,
          width: 80,
        ),
        const SizedBox(height: 8),
        const Text(
          'MEDIKATED',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Text(
          'Instant Care, Anywhere',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}