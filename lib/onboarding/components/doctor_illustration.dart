import 'package:flutter/material.dart';
import '../../onboarding2/onboarding_screen.dart'; // Import your SignUpScreen

class DoctorIllustration extends StatelessWidget {
  const DoctorIllustration({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to SignUpScreen when the image is tapped
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const OnboardingScreen()),
        );
      },
      child: Center(
        child: Image.asset(
          '/Users/emmanuelfrancislahai/Desktop/MEDIKATED_HACKATHON/medikated_hackathon/assets/images/woman.png',
          height: 300, // You can adjust the size
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

