import 'package:flutter/material.dart';

class MeetingInfo extends StatelessWidget {
  final String doctorName;
  final String dateTime;

  const MeetingInfo({
    super.key,
    required this.doctorName,
    required this.dateTime,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: const TextStyle(
              fontSize: 20,
              color: Colors.black,
              height: 1.4,
            ),
            children: [
              const TextSpan(
                text: 'Your upcoming virtual meeting with ',
              ),
              TextSpan(
                text: doctorName,
                style: const TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const TextSpan(
                text: ' has been scheduled',
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        Text(
          dateTime,
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey[600],
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}