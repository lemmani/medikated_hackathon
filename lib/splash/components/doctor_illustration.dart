import 'package:flutter/material.dart';
import '../../onboarding/onboarding_screen.dart'; // Import your OnboardingScreen

class DoctorIllustration extends StatefulWidget {
  const DoctorIllustration({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DoctorIllustrationState createState() => _DoctorIllustrationState();
}

class _DoctorIllustrationState extends State<DoctorIllustration> {
  @override
  void initState() {
    super.initState();
    // Navigate to OnboardingScreen after 3 seconds
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        // ignore: use_build_context_synchronously
        context,
        MaterialPageRoute(builder: (context) => const OnboardingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          '/Users/emmanuelfrancislahai/Desktop/MEDIKATED_HACKATHON/medikated_hackathon/assets/images/medikated_logo.png',
          height: 300, // Adjust the size as needed
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
