import 'package:flutter/material.dart';

class EmergencyNotice extends StatelessWidget {
  const EmergencyNotice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
      ),
      child: RichText(
        text: TextSpan(
          style: TextStyle(
            color: Colors.grey[800],
            fontSize: 14,
          ),
          children: const [
            TextSpan(
              text: 'For medical emergencies, please call 112 (or your local emergency number) or go to the ',
            ),
            TextSpan(
              text: 'nearest emergency hospital',
              style: TextStyle(
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
            ),
            TextSpan(text: '.'),
          ],
        ),
      ),
    );
  }
}