import 'package:flutter/material.dart';
import 'components/doctor_illustration.dart';
import 'components/page_indicator.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              const SizedBox(height: 40),
              const DoctorIllustration(),
              const SizedBox(height: 20),
              const PageIndicator(
                totalDots: 2,
                currentIndex: 0,
              ),
              const SizedBox(height: 32),
              const Spacer(),
              // const SignInButton(),
              const SizedBox(height: 48),
            ],
          ),
        ),
      ),
    );
  }
}