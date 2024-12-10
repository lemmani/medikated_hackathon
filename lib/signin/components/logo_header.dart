import 'package:flutter/material.dart';

class LogoHeader extends StatelessWidget {
  const LogoHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/medikated_logo.png',
          height: 80,
          fit: BoxFit.contain,
        ),
        const SizedBox(height: 32),
        const Text(
          'Sign in to your account',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xFF1A1F71),
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          'Welcome back! You have been missed.',
          style: TextStyle(
            fontSize: 16,
            color: Color(0xFF6B7280),
          ),
        ),
      ],
    );
  }
}