import 'package:flutter/material.dart';
import 'components/doctor_illustration.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: DoctorIllustration(),  // Image is tapped to navigate to SignUpScreen
        ),
      ),
    );
  }
}
